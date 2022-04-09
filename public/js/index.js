// import loader from '@assemblyscript/loader';

let importObject = {
    imports: {
        imported_func: function(arg) {
            console.log(arg);
        }
    },
    env: {
        abort(_msg, _file, line, column) {
          console.error("abort called at " + line + ":" + column);
        },
    },
};

loader.instantiate(
    fetch("assets/optimized.wasm", {
        'Content-Type': 'application/wasm',
    }),
    importObject
).then(({ exports }) => {
    const {
        __newString,
        __getString,
        encrypt,
        decrypt,
    } = exports;

    console.log(exports);

    let message = '11q2345678';
    let key = '12345';

    let encrypted = encrypt(__newString(message), __newString(key));
    console.log(__getString(encrypted));

    let decrypted = decrypt(encrypted, __newString(key));
    console.log(__getString(decrypted).trim());
})
