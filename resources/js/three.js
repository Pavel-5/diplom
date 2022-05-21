import VisGraph3d from './graphs/vis-graph3d';

async function fetchData(data) {
    let response = await fetch('/data', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({
            data: data
        })
    });

    return await response.json();
}

document.addEventListener('DOMContentLoaded', async () => {
    let dataFetch = await fetchData();

    console.log(dataFetch[0]);

    let options = {
        width:  'auto',
        height: '100vh',
        style: 'dot-color',
        showPerspective: true,
        showGrid: true,
        showShadow: false,
        keepAspectRatio: false,
        verticalRatio: 0.5,
        xLabel: 'X',
        yLabel: 'Y',
        zLabel: 'Z',
        tooltip: true,
    }, keys = {
        x: 'SALES',
        y: 'PRICEEACH',
        z: 'QUANTITYORDERED',
    };

    let graph = new VisGraph3d({
        data: dataFetch,
        options: options,
        steps: 200,
        keys: keys,
    });
});
