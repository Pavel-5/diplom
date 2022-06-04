import Assembly from "../assembly";

function transformItemData(item, localStorage, assembly) {
    let config = localStorage['DIPLOM_CONFIG'];

    config.propertiesInSeparateTables.forEach((property) => {
        localStorage[property] =
            localStorage.hasOwnProperty(property)
                ? localStorage[property]
                : [];

        let value = item[property];

        if (value) {
            value = assembly.encrypt(value);

            let index = localStorage[property].indexOf(value);

            if (index === -1) {
                localStorage[property].push(value);

                index = localStorage[property].length - 1;
            }

            item[property] = index;
        }
    });

    // config.propertiesIsDate.forEach((property) => {
    //     let date = item[property]
    //         .split(' ')[0]
    //         .split('/')
    //         .map((elem) => {
    //             return (parseInt(elem) < 10)
    //                 ? '0' + elem
    //                 : elem;
    //         });
    //
    //     item[property] = +new Date(date[2], date[0], date[1]);
    // });

    return item;
}

self.addEventListener('message', async function(e) {
    let dataFetch = e.data.dataFetch;
    let key = e.data.key;
    let assembly = await Assembly.init(key);

    let localStorage = e.data.localStorage;
    let data = [];
    let countEncryptedItemsData = 0;
    let percentEncryptedItemsData = 0;
    let percentInPart = 20;
    let minCountPointsInPart = 500;

    dataFetch.forEach((item) => {
        item = transformItemData(item, localStorage, assembly);

        self.postMessage({
            'action': 'tables',
            'data': localStorage,
        });

        for (let property in item) {
            if (item[property] !== "") {
                item[property] = assembly.encrypt(item[property].toString());
            }
        }

        data.push(item);
        countEncryptedItemsData++;

        let currentPercentDecrypted = 100 / dataFetch.length * data.length;

        if (currentPercentDecrypted >= percentInPart && data.length >= minCountPointsInPart) {
            self.postMessage({
                'action': 'partData',
                'key': 'DATA',
                'data': data,
            });
            data = [];
        }

        let currentPercent = Math.floor(100 / dataFetch.length * countEncryptedItemsData);

        if (percentEncryptedItemsData < currentPercent) {
            percentEncryptedItemsData = currentPercent;

            self.postMessage({
                'action': 'percent',
                'data': percentEncryptedItemsData,
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
