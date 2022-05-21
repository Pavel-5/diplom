import Assembly from "./assembly";
import VisGraph3d from './graphs/vis-graph3d';
import { allProperties, coordinates, propertiesInSeparateTables, propertiesInFilter } from './config';

let graph;
let allData = [];
let assembly;
let decryptedProperties = [];
let decryptedTables = {};
let isLoading = false;

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

async function fetchData(data = []) {
    let response = await fetch('/data', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            'Content-Type': 'application/json;charset=utf-8',
        },
        body: JSON.stringify({
            data: data
        })
    });

    return await response.json();
}

async function run(clear = false) {
    clear && localStorage.clear();

    if (!localStorage.getItem('DATA')) {
        changeProgressBar(0);
        isLoading = true;

        let worker = new Worker('js/workers/encryptDataWorker.js');

        worker.addEventListener('message', async function(e) {
            let key = e.data.key;
            let data = e.data.data;

            switch (e.data.action) {
                case 'table':
                    localStorage.setItem(key, JSON.stringify(data));
                    break;

                case 'partData':
                    allData = localStorage.getItem(key)
                        ? JSON.parse(localStorage.getItem(key))
                        : [];

                    allData.push(...data);
                    localStorage.setItem(key, JSON.stringify(allData));

                    graph.setParams(
                        graph.keys,
                        graph.options,
                        decryptedGraphData(graph.keys)
                    );

                    fillFilters();

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

        let localStorageObject = {};
        for(let key of Object.keys(localStorage)) {
            localStorageObject[key] = JSON.parse(localStorage.getItem(key));
        }

        worker.postMessage({
            'x_csrf': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            'localStorage': localStorageObject,
        });

        // let dataFetch = await fetchData();
        //
        // dataFetch.map((item) => {
        //     propertiesInSeparateTables.forEach((property) => {
        //         console.log(localStorage.getItem(property));
        //         let table =
        //             localStorage.hasOwnProperty(property)
        //                 ? JSON.parse(localStorage.getItem(property))
        //                 : [];
        //         let changed = false;
        //         let value = item[property];
        //
        //         if (value) {
        //             value = assembly.encrypt(value);
        //
        //             let index = table.indexOf(value);
        //
        //             if (index === -1) {
        //                 table.push(value);
        //
        //                 index = table.length - 1;
        //                 changed = true;
        //             }
        //
        //             item[property] = index;
        //
        //             if (changed) {
        //                 localStorage.setItem(property, JSON.stringify(table));
        //             }
        //         }
        //     });
        //
        //     let date = item['ORDERDATE']
        //         .split(' ')[0]
        //         .split('/')
        //         .map((elem) => {
        //             return (parseInt(elem) < 10)
        //                 ? '0' + elem
        //                 : elem;
        //         });
        //
        //     item['ORDERDATE'] = +new Date(date[2], date[0], date[1]);
        //
        //     for (let property in item) {
        //         if (item[property] !== "") {
        //             item[property] = assembly.encrypt(item[property].toString());
        //         }
        //     }
        //
        //     return item;
        // });
        //
        // localStorage.setItem('DATA', JSON.stringify(dataFetch));
    } else {
        allData = JSON.parse(localStorage.getItem('DATA'));

        graph.setParams(
            graph.keys,
            graph.options,
            decryptedGraphData(graph.keys)
        );

        fillFilters();
    }
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

    allProperties.forEach((property) => {
        let option = `<option value="${property.value}" ${(graph.keys.x === property.value) ? 'selected' : ''}>${property.title}</option>`;
        xSelect.insertAdjacentHTML('beforeend', option);

        option = `<option value="${property.value}" ${(graph.keys.y === property.value) ? 'selected' : ''}>${property.title}</option>`;
        ySelect.insertAdjacentHTML('beforeend', option);

        option = `<option value="${property.value}" ${(graph.keys.z === property.value) ? 'selected' : ''}>${property.title}</option>`;
        zSelect.insertAdjacentHTML('beforeend', option);

        if (propertiesInFilter.includes(property.value)) {
            option = `<option value="${property.value}">${property.title}</option>`;
            filterSelect.insertAdjacentHTML('beforeend', option);

            let block =
                `<label class="filter-value" for="${property.value}">
                        ${property.title} <select name="${property.value}" id="${property.value}"></select>
                    </label>`;

            filterValues.insertAdjacentHTML('beforeend', block);

            let propertySelect = filterValues.querySelector('#' + property.value);

            let table = localStorage.getItem(property.value);
            let uniqueValues = [];

            if (table) {
                decryptedTables[property.value] = decryptedTables[property.value] ?? JSON.parse(table)
                    .map((item) => assembly.decrypt(item));

                uniqueValues = decryptedTables[property.value];
            } else {
                let values = decryptedGraphData({
                    0: property.value,
                }).map((item) => item[property.value]);

                uniqueValues = [...new Set(values)];
            }

            uniqueValues.forEach((value) => {
                option = `<option value="${value}">${value}</option>`;
                propertySelect.insertAdjacentHTML('beforeend', option);
            });
        }
    });
}

document.addEventListener('DOMContentLoaded', async () => {
    let key = '1234567812345678';

    assembly = await Assembly.init(key);

    let keys = {
        x: 'ORDERDATE',
        y: 'PRICEEACH',
        z: 'QUANTITYORDERED',
    };
    let options = {
        style: 'dot',
    };

    graph = new VisGraph3d(document.getElementById('container'), {
        keys: keys,
        options: options,
    });

    await run();

    document.querySelector('.filters-open').addEventListener('click', (e) => {
        document.querySelector('.filters').classList.add('active');
    });

    document.querySelector('.form-submit').addEventListener('click', async (e) => {
        e.preventDefault();
        e.stopPropagation();

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

            if (propertiesInSeparateTables.includes(filterName)) {
                let dataTable = decryptedTables[filterName] ?? JSON.parse(localStorage.getItem(filterName))
                    .map((item) => {
                        return assembly.decrypt(item)
                    });
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
                : decryptedGraphData(keys, data)
        );
    });

    document.getElementById('filter-name').addEventListener('change', (e) => {
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
});
