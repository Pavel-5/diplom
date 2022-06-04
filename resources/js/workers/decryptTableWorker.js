import Assembly from "../assembly";

self.addEventListener('message', async function(e) {
    let dataFetch = e.data.dataFetch;
    let keyEncryption = e.data.keyEncryption;
    let assembly = await Assembly.init(keyEncryption);

    let data = dataFetch.map((item) => assembly.decrypt(item));

    self.postMessage({
        'action': 'data',
        'data': data,
    });

    self.postMessage({'action': 'end'});
}, false);
