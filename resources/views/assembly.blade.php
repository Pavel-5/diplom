<head>
    <style> body { margin: 0; } </style>
</head>

<body>
<div></div>

<!-- ESM -->
<script type="module" src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/index.js"></script>
<!-- UMD -->
<script src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/umd/index.js"></script>
<script type="module" src="js/index.js"></script>
<script>
    // let importObject = {
    //     imports: {
    //         imported_func: function(arg) {
    //             console.log(arg);
    //         }
    //     },
    //     env: {
    //       abort(_msg, _file, line, column) {
    //         console.error("abort called at" + line + ":" + column);
    //       },
    //     },
    // };
    //
    // async function fetchAndInstantiate() {
    //     const response = await fetch('assets/optimized.wasm');
    //     const buffer = await response.arrayBuffer();
    //     const obj = await WebAssembly.instantiate(buffer, importObject);
    //     console.log(obj.instance.exports.encrypt);
    //     // console.log(obj.instance.exports.add(1, 8));
    //     console.log(obj.instance.exports.encrypt('qwerty','123'));
    //     // let gost = new obj.instance.exports.GOST;
    //     // console.log(gost.encrypt('12345', '1111111111111111'));
    // }
    //
    // fetchAndInstantiate();
</script>
</body>
