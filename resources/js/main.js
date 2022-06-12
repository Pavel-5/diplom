import Assembly from "./assembly.js";
import VisGraph3d from './graphs/vis-graph3d';
import Config from './config/Config';
import {awrap} from "../../public/js/three";

let graph;
let allData = [];
let assembly;
let keyLocalStorage = localStorage.getItem('currentKey') ?? '';
let decryptedProperties = [];
let decryptedTables = {};
let isLoading = false;

function saveConfig(config) {
    let objConfig = {};

    for (let configKey in config) {
        objConfig[configKey] = config[configKey];
    }

    let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage)) ?? {};

    currentObjectData['DIPLOM_CONFIG'] = objConfig;

    localStorage.setItem(keyLocalStorage, JSON.stringify(currentObjectData));
}

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

function loading(flag = true) {
    let loadingDiv = document.querySelector('.scene');

    (flag)
        ? loadingDiv.classList.add('active')
        : loadingDiv.classList.remove('active');
}

function changeProgressBar(value) {
    let progress = document.querySelector('.progress');
    let progressBar = progress.querySelector('.progress-bar');

    if (value === 0)
        progress.style.display = 'flex';

    progressBar.style = `width: ${value}%;`;
    progressBar.setAttribute('aria-valuenow', value);
    progressBar.textContent = `${value}%`;

    if (value === 100)
        progress.style.display = 'none';
}

async function run(data = []) {
    if (keyLocalStorage) {
        let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage));

        if (currentObjectData.hasOwnProperty('DIPLOM_CONFIG')) {
            let config = currentObjectData['DIPLOM_CONFIG'];

            let keys = {
                x: config.allProperties[0],
                y: config.allProperties[1],
                z: config.allProperties[2],
            };
            let options = {
                style: 'dot',
                xLabel: config.allProperties[0],
                yLabel: config.allProperties[1],
                zLabel: config.allProperties[2],
            };

            graph = new VisGraph3d(document.getElementById('container'), {
                keys: keys,
                options: options,
            });

            if (!currentObjectData['DATA']) {
                if (data.length > 0) {
                    changeProgressBar(0);
                    isLoading = true;

                    let worker = new Worker('js/workers/encryptDataWorker.js');

                    worker.addEventListener('message', async (e) => {
                        let key = e.data.key ?? null;
                        let data = e.data.data;

                        switch (e.data.action) {
                            case 'table':
                                currentObjectData[key] = data;

                                localStorage.setItem(keyLocalStorage, JSON.stringify(currentObjectData));
                                break;

                            case 'tables':
                                localStorage.setItem(keyLocalStorage, JSON.stringify(data));

                                break;

                            case 'partData':
                                allData = currentObjectData[key]
                                    ? currentObjectData[key]
                                    : [];

                                allData.push(...data);

                                currentObjectData[key] = allData;

                                localStorage.setItem(keyLocalStorage, JSON.stringify(currentObjectData));

                                graph.setParams(
                                    graph.keys,
                                    graph.options,
                                    decryptedGraphData(graph.keys),
                                    currentObjectData
                                );

                                // fillFilters();

                                break;

                            case 'percent':
                                changeProgressBar(data);

                                break;

                            case 'end':
                                await worker.terminate();

                                changeProgressBar(100);

                                isLoading = false;

                                break;
                        }
                    }, false);

                    // let localStorageObject = {};
                    //
                    // for (let key of Object.keys(localStorage)) {
                    //     localStorageObject[key] = JSON.parse(localStorage.getItem(key));
                    // }

                    worker.postMessage({
                        'dataFetch': data,
                        'localStorage': currentObjectData,
                        'key': assembly.key,
                    });
                }
            } else {
                let paramKeys = [];
                config.coordinates.forEach((coordinate) => {
                    paramKeys.push(keys[coordinate]);
                });

                decryptData(
                    paramKeys,
                    currentObjectData['DATA'],
                    (data) => {
                        // decryptedProperties.push(...paramKeys);
                        // allData = data;
                        graph.setData(data);

                        // fillFilters();
                    }
                );
            }
        }
    }
}

function decryptAllData(data = []) {
    let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage));

    let worker = new Worker('js/workers/decryptAllDataWorker.js');

    data = data.length === 0
        ? currentObjectData['DATA']
        : data;

    worker.addEventListener('message', async (e) => {
        switch (e.data.action) {
            case 'data':
                decryptedTables = e.data.decryptedTables;
                decryptedProperties = e.data.decryptedProperties;
                allData = e.data.data;

                fillFilters();

                break;

            case 'end':
                await worker.terminate();

                break;
        }
    }, false);

    worker.postMessage({
        'dataFetch': data,
        'decryptedTables': decryptedTables,
        'decryptedProperties': decryptedProperties,
        'keyEncryption': assembly.key,
    });
}

function decryptData(keys = [], data = [], callback = (data) => {}) {
    let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage));
    let config = currentObjectData['DIPLOM_CONFIG'];
    let worker = new Worker('js/workers/decryptDataWorker.js');

    data = data.length === 0
        ? currentObjectData['DATA']
        : data;

    worker.addEventListener('message', async (e) => {
        let data = e.data.data;

        switch (e.data.action) {
            case 'data':
                callback(data);

                break;

            case 'end':
                await worker.terminate();

                break;
        }
    }, false);

    if (keys.length === 0) {
        config.coordinates.forEach((coordinate) => {
            keys.push(graph.keys[coordinate]);
        });
    }

    worker.postMessage({
        'dataFetch': data,
        'keys': keys,
        'keyEncryption': assembly.key,
    });
}

function decryptedGraphData(keys = {}, data = []) {
    let flagData = false;
    if (data.length === 0) {
        if (isLoading) {
            data = JSON.parse(JSON.stringify(allData));
        } else {
            data = allData;
            flagData = true;
        }
    }

    let uniqueKeys = Object
        .values(keys)
        .filter((value, index, arr) => typeof value === 'string' && arr.indexOf(value) === index);

    data = data.map((item) => {
        uniqueKeys.forEach((key) => {
            item[key] = decryptedProperties.includes(key)
                ? item[key]
                : assembly.decrypt(item[key]);
        });

        return item;
    });

    if (flagData) {
        uniqueKeys.forEach((key) => {
            if (!decryptedProperties.includes(key))
                decryptedProperties.push(key);
        });
    }

    return data;
}

function fillFilters() {
    let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage));
    let config = currentObjectData['DIPLOM_CONFIG'];

    let xSelect = document.getElementById('x');
    let ySelect = document.getElementById('y');
    let zSelect = document.getElementById('z');
    let filterSelect = document.getElementById('filter-name');
    let filterValues = document.querySelector('.filter-values');

    xSelect.textContent = '';
    ySelect.textContent = '';
    zSelect.textContent = '';
    filterSelect.textContent = '';
    filterSelect.insertAdjacentHTML('beforeend', '<option value="none">-</option>');
    filterValues.textContent = '';

    config.allProperties.forEach((property) => {
        let option = `<option value="${property}" ${(graph.keys.x === property) ? 'selected' : ''}>${property}</option>`;
        xSelect.insertAdjacentHTML('beforeend', option);

        option = `<option value="${property}" ${(graph.keys.y === property) ? 'selected' : ''}>${property}</option>`;
        ySelect.insertAdjacentHTML('beforeend', option);

        option = `<option value="${property}" ${(graph.keys.z === property) ? 'selected' : ''}>${property}</option>`;
        zSelect.insertAdjacentHTML('beforeend', option);

        if (config.propertiesInFilter.includes(property)) {
            option = `<option value="${property}">${property}</option>`;
            filterSelect.insertAdjacentHTML('beforeend', option);

            let block =
                `<label class="filter-value" for="${property}">
                        ${property} <select name="${property}" id="${property}"></select>
                    </label>`;

            filterValues.insertAdjacentHTML('beforeend', block);

            let propertySelect = filterValues.querySelector('#' + property);

            let table = currentObjectData[property];
            let uniqueValues = [];

            if (table) {
                decryptedTables[property] = decryptedTables[property] ?? table
                    .map((item) => assembly.decrypt(item));

                uniqueValues = decryptedTables[property];

                // decryptTable(JSON.parse(table), (data) => {
                //     uniqueValues = data;
                // });
            } else {
                let values = decryptedGraphData({
                    0: property,
                })
                    .map((item) => item[property])
                    .sort((a, b) => {
                        if (!isNaN(parseInt(a)) && !isNaN(parseInt(b)))
                            return a - b;
                        else
                            return 1;
                    });

                uniqueValues = [...new Set(values)];
            }

            uniqueValues.forEach((value) => {
                option = `<option value="${value}">${value}</option>`;
                propertySelect.insertAdjacentHTML('beforeend', option);
            });
        }
    });
}

function fillFiles() {
    let select = document.querySelector('#current-file');
    for (let localStorageKey in localStorage) {
        if (localStorageKey.match(/.csv$/g)) {
            let option = `<option value="${localStorageKey}" ${(localStorageKey === localStorage.getItem('currentKey')) ? 'selected' : ''}>${localStorageKey}</option>`;
            select.insertAdjacentHTML('beforeend', option);
        }
    }
}

async function fetchKey(x_csrf, data = []) {
    let response = await fetch('/getKey', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': x_csrf,
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({
            data: data
        })
    });

    response = await response.json();

    if (response.status === 'ok') {
        return response.key;
    } else {
        alert('Авторизуйтесь');
        return false;
    }
}

document.addEventListener('DOMContentLoaded', async () => {
    let key = await fetchKey(document.querySelector('meta[name=csrf-token]').getAttribute('content'));

    assembly = await Assembly.init(key);

    fillFiles();

    await run();

    document.querySelector('.filters-open')?.addEventListener('click', (e) => {
        document.querySelector('.filters').classList.add('active');
    });

    document.querySelector('.filters-form')?.addEventListener('submit', async (e) => {
        e.preventDefault();
        e.stopPropagation();

        let currentObjectData = JSON.parse(localStorage.getItem(keyLocalStorage));
        let config = currentObjectData['DIPLOM_CONFIG'];

        let form = new FormData(document.querySelector('.filters-form'));

        let keys = {
            x: form.get('x'),
            y: form.get('y'),
            z: form.get('z'),
        };
        let options = {
            style: form.get('graph-type'),
        };

        let filterName = form.get('filter-name');

        let data = [];

        if (filterName !== 'none') {
            let filterValue = form.get(filterName);

            if (config.propertiesInSeparateTables.includes(filterName)) {
                let dataTable = decryptedTables[filterName] ?? currentObjectData[filterName]
                    .map((item) => assembly.decrypt(item));
                let flagDecrypt = !decryptedProperties.includes(filterName);

                allData.map((item) => {
                    item[filterName] = (flagDecrypt)
                        ? assembly.decrypt(item[filterName])
                        : item[filterName];

                    return item;
                });

                if(flagDecrypt && !isLoading) {
                    decryptedProperties.push(filterName);
                }

                data = allData.filter((item) => dataTable[item[filterName]] === filterValue);
            }
        }

        graph.setParams(
            keys,
            options,
            (data.length === 0)
                ? decryptedGraphData(keys)
                : decryptedGraphData(keys, data),
            currentObjectData
        );
    });

    document.querySelector('.download-form')?.addEventListener('submit', async (e) => {
        e.preventDefault();
        e.stopPropagation();

        let formElem = document.querySelector('.download-form');
        decryptedProperties = [];
        decryptedTables = {};

        let form = new FormData(formElem);

        let fileLink = form.get('downloadedFile');

        let response = await fetch(fileLink, {
            method: 'post',
        });

        let type = response.headers.get('Content-Type');

        if (type.indexOf("text/csv") !== -1) {
            let fileName = '';
            if (response.headers.has('Content-Disposition')) {
                response.headers.get('Content-Disposition')
                    .split(';')
                    .forEach((item) => {
                        if (item.indexOf('filename') !== -1) {
                            fileName = item.slice(item.indexOf('"') + 1, -1);
                        }
                    });
            }

            if (!fileName) {
                fileName = prompt('Введите название файла') + ".csv";
            }

            keyLocalStorage = fileName;

            localStorage.setItem('currentKey', keyLocalStorage);

            formElem.querySelector('input[name=downloadedFile]').value = '';

            localStorage.removeItem(keyLocalStorage);

            let textData = await response.text();

            let arrData = textData
                .split('\n')
                .map((str) => str.split(','));

            Config.allProperties = arrData.shift();
            Config.propertiesInSeparateTables = [];

            arrData = arrData.map((item, i) => {
                let objItem = {};

                item.forEach((value, index) => {
                    let property = Config.allProperties[index];

                    if (isNaN(+value)) {
                        let regExp = /(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})/g;

                        // if (value.match(regExp) !== null) {
                        //     if (!Config.propertiesIsDate.includes(property)) {
                        //         Config.propertiesInSeparateTables.filter((item) => item !== property);
                        //         Config.propertiesIsDate.push(property);
                        //     }
                        //
                        //
                        // } else {
                        if (property && !Config.propertiesInSeparateTables.includes(property))
                            Config.propertiesInSeparateTables.push(property);
                        // }
                    }

                    objItem[property] = value;
                });

                return objItem;
            });

            Config.propertiesInFilter = Config.propertiesInSeparateTables;

            saveConfig(Config);

            await run(arrData);
        } else {
            alert("Тип файла должен быть CSV.");
        }

        return 0;
    });

    document.getElementById('filter-name')?.addEventListener('change', (e) => {
        document
            .querySelectorAll('.filter-value')
            .forEach((elem) => {
                elem.classList.remove('active');
            });

        document
            .getElementById(e.target.value)
            ?.closest('.filter-value')
            .classList.add('active');
    });

    document.querySelector('#current-file').addEventListener('change', async (e) => {
        localStorage.setItem('currentKey', e.target.value);

        decryptedTables = {};
        decryptedProperties = [];
        allData = [];

        await run();
    });
});
