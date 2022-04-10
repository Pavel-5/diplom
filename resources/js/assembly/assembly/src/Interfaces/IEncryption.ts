interface IEncryption {
    // getInstance(): IEncryption;
    setKey(key:string): void;
    encrypt(message: string): string;
    decrypt(message: string): string;
}

export {IEncryption}
