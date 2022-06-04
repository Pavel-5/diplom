// import {allProperties, coordinates, propertiesInSeparateTables} from '../config';
import Assembly from "../assembly";
import Config from "../config/Config";
import contains from "@popperjs/core/lib/dom-utils/contains";

export default class VisGraph3d {
    data = [];
    dataSet = null;
    graph = null;
    container = null;
    keys = {
        // x: 'SALES',
        // y: 'PRICEEACH',
        // z: 'QUANTITYORDERED',
        style: (x, y, z) => {
            // let color = '';
            // if (y < +new Date('2003-12-31')) {
            //     color = 'red';
            // } else if (y < +new Date('2004-12-31')) {
            //     color = 'blue';
            // } else {
            //     color = 'white';
            // }
            // return {
            //     fill: color,
            //     stroke: "#000"
            // }

            return x * z;
        }
    }

    options = {
        width:  'auto',
        height: '99%',
        style: 'dot-color', //bar, bar-color, bar-size, dot, dot-line, dot-color, dot-size, line, grid, surface
        showPerspective: true,
        showGrid: true,
        showShadow: true,
        showLegend: false,
        keepAspectRatio: false,
        verticalRatio: 0.5,
        xLabel: 'X',
        yLabel: 'Y',
        zLabel: 'Z',
        dotSizeRatio: 0.01,
        tooltip: this.tooltip.bind(this),
        tooltipStyle: {
            content: {
                background: 'rgba(255, 255, 255, 0.7)',
                padding: '10px',
                borderRadius: '10px',
            },
            line: {
                borderLeft: '2px dotted rgba(0, 0, 0, 0.5)',
            },
            dot: {
                border: '5px solid rgba(0, 0, 0, 0.5)',
            }
        },
    }

    tooltip(point) {
        for (let key in point.data.isDate) {
            if (point.data.isDate[key]) {
                point[key + 'Value'] = new Date(point.data[key]).toLocaleDateString('ru', {
                    year: 'numeric',
                    month: 'numeric',
                    day: 'numeric'
                });
            }
        }

        return `<p>${this.options.xLabel}: ${(point.hasOwnProperty('xValue')) ? point.xValue : point.x}</p>
                <p>${this.options.yLabel}: ${(point.hasOwnProperty('yValue')) ? point.yValue : point.y}</p>
                <p>${this.options.zLabel}: ${(point.hasOwnProperty('zValue')) ? point.zValue : point.z}</p>`;
    }

    constructor(container, params = {}) {
        this.container = container;

        if (params.hasOwnProperty('keys'))
            this.setKeys(params.keys);

        if (params.hasOwnProperty('options'))
            this.setOptions(params.options);

        this.graph = new vis.Graph3d(this.container, this.dataSet, this.options);
    }

    setKeys(keys) {
        this.keys = {...this.keys, ...keys};
    }

    setOptions(options = {}) {
        this.options = {...this.options, ...options};

        this.graph?.setOptions(this.options);
    }

    setData(data) {
        this.data = [];
        this.dataSet = null;

        this.addData(data);
    }

    addData(data) {
        this.data = [...this.data, ...data];

        if (!this.dataSet)
            this.dataSet = new vis.DataSet();

        let counter = this.dataSet.length;

        data.forEach((item) => {
            let x = parseInt(item[this.keys.x]),
                y = parseInt(item[this.keys.y]),
                z = parseInt(item[this.keys.z]);

            if ((x || x === 0) && (y || y === 0) && (z || z === 0)) {
                this.dataSet.add({
                    id: counter++,
                    x: x,
                    y: y,
                    z: z,
                    isDate: {
                        x: this.keys.x === 'ORDERDATE',
                        y: this.keys.y === 'ORDERDATE',
                        z: this.keys.z === 'ORDERDATE',
                    },
                    style: this.keys.style(x, y, z),
                });
            }
        });

        delete this.graph;

        this.graph = new vis.Graph3d(this.container, this.dataSet, this.options);

        // this.graph?.setData(this.dataSet);
    }

    redraw() {
        this.graph.redraw();
    }

    async setParams(keys, options = {}, data = []) {
        let config = JSON.parse(localStorage['DIPLOM_CONFIG']);
        let assembly = await Assembly.init();

        let formatDate = (value) => {
            return new Date(value).toLocaleDateString('ru', {
                year: 'numeric',
                month: 'numeric',
                day: 'numeric'
            });
        };

        this.setOptions({
            xValueLabel: (keys.x === 'ORDERDATE') ? formatDate : (value) => value,
            yValueLabel: (keys.y === 'ORDERDATE') ? formatDate : (value) => value,
            zValueLabel: (keys.z === 'ORDERDATE') ? formatDate : (value) => value,
        });

        this.setKeys(keys);

        this.setData(data);

        let buildOptions = {};

        config.coordinates.forEach((key) => {
            if (config.propertiesInSeparateTables.includes(keys[key])) {
                buildOptions[key + 'Step'] = 1;
                buildOptions[key + 'ValueLabel'] = (value) => {
                    return assembly.decrypt(
                        JSON.parse(
                            localStorage.getItem(keys[key])
                        )[value]
                    );
                }
            }
        });

        buildOptions = {
            ...buildOptions,
            xLabel: this.keys.x,
            yLabel: this.keys.y,
            zLabel: this.keys.z,
        };

        let tooltip = (point) => {
            config.coordinates.forEach((key) => {
                point[key + 'Value'] = (config.propertiesInSeparateTables.includes(keys[key]))
                    ? assembly.decrypt(
                        JSON.parse(
                            localStorage.getItem(keys[key])
                        )[point[key]]
                    )
                    : point[key];
            });

            for (let key in point.data.isDate) {
                if (point.data.isDate[key]) {
                    point[key + 'Value'] = new Date(point.data[key]).toLocaleDateString('ru', {
                        year: 'numeric',
                        month: 'numeric',
                        day: 'numeric'
                    });
                }
            }

            return `<p>${buildOptions.xLabel}: ${point.xValue}</p>
                <p>${buildOptions.yLabel}: ${point.yValue}</p>
                <p>${buildOptions.zLabel}: ${point.zValue}</p>`;
        };

        this.setOptions({
            ...buildOptions,
            tooltip: tooltip,
            ...options,
        });
    }
}
