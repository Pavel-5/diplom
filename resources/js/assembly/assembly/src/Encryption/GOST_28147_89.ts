import * as Config from "../config";
import { IEncryption } from '../Interfaces/IEncryption';

class GOST_28147_89 implements IEncryption {
    static instance: GOST_28147_89;
    //Массив ключей k
    keyArr: string[] = [];

    static getInstance(): GOST_28147_89 {
        return GOST_28147_89.instance
            ? GOST_28147_89.instance
            : new GOST_28147_89();
    }

    setKey(key: string): void {
        //Разбить 256бит ключ на 8 32бит ключей k0...k7
        let binaryKey: string = this.textToPseudoBinary(key);
        this.keyArr = this.splitPseudoBinary(binaryKey, 8);
    }

    textToPseudoBinary(text: string, charSize: i32 = Config.CHAR_SIZE): string {
        let answer = "";
        for (let i = 0; i < text.length; i++) {
            const pseudoBinary = text.charCodeAt(i).toString(2);
            const placeholder = '0'.repeat(charSize - pseudoBinary.length);
            answer += placeholder + pseudoBinary;
        }
        return answer;
    }

    pseudoBinaryToInt(pseudoBinary: string): i64 {
        return i64(parseInt(pseudoBinary, 2));
    }

    intToPseudoBinary(int: i64, charSize: i32): string {
        let answer = "";
        const pseudoBinary = int.toString(2);
        const placeholder = '0'.repeat(charSize - pseudoBinary.length);
        answer += placeholder + pseudoBinary;
        return answer;
    }

    parseTextFromPseudoBinary(pseudoBinary: string, charSize: i32): string {
        let answer = "";
        const charsCount = pseudoBinary.length / charSize;
        for (let i = 0; i < charsCount; i++) {
            answer += String.fromCharCode(
                i32(
                    this.pseudoBinaryToInt(
                        pseudoBinary.substr(i * charSize, charSize)
                    )
                )
            );
        }
        return answer;
    }

    //Разделение двоичного представления на partsCount
    splitPseudoBinary(pseudoBinary: string, partsCount: i32): string[] {
        let pseudoBinarySplit: string[] = [];
        let partSize = pseudoBinary.length / partsCount;
        for (let i = 0; i < partsCount; i++) {
            pseudoBinarySplit.push(pseudoBinary.substr(i * partSize, partSize));
        }
        return pseudoBinarySplit;
    }

    pseudoXor(a: string, b: string): string {
        let answer = "";
        const length = a.length;

        for (let i = 0; i < length; i++) {
            let pseudoBit: string;

            // if(a[i] === b[i])
            if(a.slice(i, i + 1) == b.slice(i, i + 1))
                pseudoBit = '0';
            else
                pseudoBit = '1';

            answer += pseudoBit;
        }

        return answer;
    }

    pseudoAddMod(a: string, b: string, mod: i64): string {
        const aInt: i64 = i64(this.pseudoBinaryToInt(a));
        const bInt: i64 = i64(this.pseudoBinaryToInt(b));
        let answer = i64((aInt + bInt) % mod);
        return this.intToPseudoBinary(answer, a.length);
    }

    shiftLeftPseudo(pseudoBinary: string, n: i32): string {
        for (let i = 0; i < n; i++) {
            pseudoBinary = pseudoBinary.substr(1) + pseudoBinary.substr(0,1);
        }
        return pseudoBinary;
    }

    f(A: string, X: string): string {
        //Сложение по модулю
        const binarySum = this.pseudoAddMod(A, X, Config.ADD_MOD);

        //Разбить на 8 4х-битовых подпоследовательностей
        const ASplit = this.splitPseudoBinary(binarySum,8);
        const ASplitMutated: string[] = [];

        //Для каждого 4бит блока произвести замену через S-блок
        for (let i = 0; i < ASplit.length; i++) {
            const AInt = i32(this.pseudoBinaryToInt(ASplit[i]));
            ASplitMutated.push(this.intToPseudoBinary(Config.S_BLOCKS[i][AInt], 4));
        }

        //Объединить блоки в 32 бита
        let answer = ASplitMutated.join("");
        //Сдвиг влево на 11 битов
        return this.shiftLeftPseudo(answer, 11)
    }

    encrypt(message: string): string {
        let messageBinary = this.textToPseudoBinary(message);

        //Добить нулями до 64 бит
        const zero = '0'.repeat(Config.CHAR_SIZE);
        while(messageBinary.length % Config.BLOCK_SIZE) {
            messageBinary = zero + messageBinary;
        }

        //Разбить текст на блоки 64 бита
        const messageBinarySplit64 = this.splitPseudoBinary(messageBinary, messageBinary.length / Config.BLOCK_SIZE)

        //Разбить каждый 64-битный блок текста на две половины по 32 бита T0 = (A0, B0)
        const messageBinarySplit32: Array<string[]> = [];
        for (let i = 0; i < messageBinarySplit64.length; i++) {
            messageBinarySplit32.push(this.splitPseudoBinary(messageBinarySplit64[i], 2));
        }

        //32 раунда
        for (let i = 0; i < Config.ROUNDS_COUNT; i++) {
            //Получение ключа Xi
            const xIndex = (i < 24) ? i % this.keyArr.length : 7 - i % this.keyArr.length;
            const X = this.keyArr[xIndex];

            //Обход по каждому 64-бит блоку
            for (let j = 0; j < messageBinarySplit32.length; j++) {
                let buf = messageBinarySplit32[j][0].toString();
                const idkHowToName = this.f(messageBinarySplit32[j][0], X);
                messageBinarySplit32[j][0] = this.pseudoXor(messageBinarySplit32[j][1], idkHowToName);// Ai+1 = Bi ^ f(Ai, Xi)
                messageBinarySplit32[j][1] = buf;// Bi+1 = Ai
            }
        }

        let answerBinary64: Array<string> = [];

        //Объединение 32бит блоков
        for (let i = 0; i < messageBinarySplit32.length; i++) {
            answerBinary64.push(
                messageBinarySplit32[i].join("")
            );
        }

        //Объединение 64бит блоков
        let answerBinary = answerBinary64.join("");
        let answer = this.parseTextFromPseudoBinary(answerBinary, Config.CHAR_SIZE);
        return answer;
    }

    decrypt(message: string): string {
        let messageBinary = this.textToPseudoBinary(message);

        const zero = '0'.repeat(Config.CHAR_SIZE);
        while(messageBinary.length % Config.BLOCK_SIZE) {
            messageBinary += zero;
        }

        // Разбить текст на блоки 64 бита
        const messageBinarySplit64 = this.splitPseudoBinary(messageBinary, messageBinary.length / Config.BLOCK_SIZE)

        //Разбить каждый 64-битный блок текста на две половины по 32 бита T0 = (A0, B0)
        const messageBinarySplit32: Array<string[]> = []
        for (let i = 0; i < messageBinarySplit64.length; i++) {
            messageBinarySplit32.push(this.splitPseudoBinary(messageBinarySplit64[i], 2));
        }

        //32 раунда
        for (let i = 0; i < Config.ROUNDS_COUNT; i++) {
            const xIndex = (i < 8) ? i % this.keyArr.length : 7 - i % this.keyArr.length;
            const X = this.keyArr[xIndex];

            //Обход по каждому 64-бит блоку
            for (let j = 0; j < messageBinarySplit32.length; j++) {
                const buf = messageBinarySplit32[j][1].toString();
                const idkHowToName = this.f(messageBinarySplit32[j][1],X);
                messageBinarySplit32[j][1] = this.pseudoXor(messageBinarySplit32[j][0], idkHowToName);
                messageBinarySplit32[j][0] = buf;
            }
        }

        let answerBinary64: string[] = [];
        for (let i = 0; i < messageBinarySplit32.length; i++) {
            answerBinary64.push(messageBinarySplit32[i].join(""));
        }

        let answerBinary = answerBinary64.join("");
        let answer = this.parseTextFromPseudoBinary(answerBinary, Config.CHAR_SIZE);

        return answer;
    }
}

export {GOST_28147_89}
