import {Assembly} from "./assembly";

document.addEventListener('DOMContentLoaded', async () => {
    let assembly = await Assembly.init('1234');

    localStorage.setItem('data', assembly.encrypt('qwerty'));

    let data = localStorage.getItem('data');

    document.querySelector('.assembly .encrypted').value = data;

    data = assembly.decrypt(data);

    document.querySelector('.assembly .decrypted').value = data;
});

