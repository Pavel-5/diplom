import {propertiesInSeparateTables} from "../config";
import Assembly from "../assembly";

async function fetchData(x_csrf, data = []) {
    let response = await fetch('/data', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': x_csrf,
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({
            data: data
        })
    });

    return await response.json();
}

self.addEventListener('message', async function(e) {
    let dataFetch = await fetchData(e.data.x_csrf);
    let assembly = await Assembly.init();
    let localStorage = e.data.localStorage;
    let data = [];
    let countDecryptedItemsData = 0;
    let percentDecryptedItemsData = 0;
    let countPointsInPart = 500;

    dataFetch.forEach((item) => {
        propertiesInSeparateTables.forEach((property) => {
            localStorage[property] =
                localStorage.hasOwnProperty(property)
                    ? localStorage[property]
                    : [];

            let changed = false;
            let value = item[property];

            if (value) {
                value = assembly.encrypt(value);

                let index = localStorage[property].indexOf(value);

                if (index === -1) {
                    localStorage[property].push(value);

                    index = localStorage[property].length - 1;
                    changed = true;
                }

                item[property] = index;

                if (changed) {
                    self.postMessage({
                        'action': 'table',
                        'key': property,
                        'data': localStorage[property]
                    });
                }
            }
        });

        let date = item['ORDERDATE']
            .split(' ')[0]
            .split('/')
            .map((elem) => {
                return (parseInt(elem) < 10)
                    ? '0' + elem
                    : elem;
            });

        item['ORDERDATE'] = +new Date(date[2], date[0], date[1]);

        for (let property in item) {
            if (item[property] !== "") {
                item[property] = assembly.encrypt(item[property].toString());
            }
        }

        data.push(item);
        countDecryptedItemsData++;

        if (data.length % countPointsInPart === 0) {
            self.postMessage({
                'action': 'partData',
                'key': 'DATA',
                'data': data,
            });
            data = [];
        }

        let currentPercent = Math.floor(100 / dataFetch.length * countDecryptedItemsData);

        if (percentDecryptedItemsData < currentPercent) {
            percentDecryptedItemsData = currentPercent;

            self.postMessage({
                'action': 'percent',
                'data': percentDecryptedItemsData,
            });
        }
    });

    self.postMessage({
        'action': 'partData',
        'key': 'DATA',
        'data': data,
    });

    self.postMessage({'action': 'end'});
}, false);
