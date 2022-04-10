import { GOST_28147_89 } from './src/Encryption/GOST_28147_89';

declare function log(n: string): void;

export function encrypt(message: string, key: string): string
{
    let gost = GOST_28147_89.getInstance();

    gost.setKey(key);

    return gost.encrypt(message);
}

export function decrypt(message: string, key: string): string
{
    let gost = GOST_28147_89.getInstance();

    gost.setKey(key);

    return gost.decrypt(message);
}
