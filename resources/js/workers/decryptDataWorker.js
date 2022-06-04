import Assembly from "../assembly";

self.addEventListener('message', async function(e) {
    let dataFetch = e.data.dataFetch;
    let keyEncryption = e.data.keyEncryption;
    let keys = e.data.keys;
    let assembly = await Assembly.init(keyEncryption);

    let data = [];
    // let percentInPart = 50;
    // let minCountPointsInPart = 500;

    dataFetch.forEach((item) => {
        keys.forEach((property) => {
            if (item[property] !== '') {
                item[property] = assembly.decrypt(item[property].toString());
            }
        });

        data.push(item);

        // let currentPercentDecrypted = 100 / dataFetch.length * data.length;
        //
        // if (currentPercentDecrypted >= percentInPart && data.length >= minCountPointsInPart) {
        //     self.postMessage({
        //         'action': 'partData',
        //         'data': data,
        //     });
        //     data = [];
        // }
    });

    self.postMessage({
        'action': 'data',
        'data': data,
    });

    self.postMessage({'action': 'end'});
}, false);
