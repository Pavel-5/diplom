import loader from "@assemblyscript/loader";

export default class Assembly {
    static instance = null;
    key = '1234567812345678';
    wasmModule = null;

    static async init(key) {
        if (this.instance) {
            return this.instance;
        } else {
            this.instance = new Assembly();

            if (key)
                this.instance.key = key;

            let importObject = {
                env: {
                    abort(_msg, _file, line, column) {
                        console.error("abort called at " + line + ":" + column);
                    },
                },
                index: {
                    log(n) {
                        console.log(n);
                    },
                },
            };

            this.instance.wasmModule = await loader.instantiate(
                fetch("/assets/optimized.wasm", {
                    'Content-Type': 'application/wasm',
                }),
                importObject
            );

            return this.instance;
        }
    }

    encrypt(message) {
        const {
            __newString,
            __getString,
            __collect,
            encrypt,
        } = this.wasmModule.exports;

        let result = __getString(encrypt(__newString(message), __newString(this.key)));

        __collect();

        return result;
    }

    decrypt(encrypted) {
        const {
            __newString,
            __getString,
            __collect,
            decrypt,
        } = this.wasmModule.exports;

        let data = __getString(decrypt(__newString(encrypted), __newString(this.key)));
        let decrypted = '';

        for(let i = 0; i < data.length; i++) {
            if (data.charCodeAt(i) !== 0) {
                decrypted += data[i];
            }
        }

        __collect();

        return decrypted;
    }
}
