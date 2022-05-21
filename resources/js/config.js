let allProperties = [
    {
        title: "Количество заказов",
        value: "QUANTITYORDERED",
    },
    {
        title: "Цена товара",
        value: "PRICEEACH",
    },
    {
        title: "Дата заказа",
        value: "ORDERDATE",
    },
    // {
    //     title: "Номер строки заказа",
    //     value: "ORDERLINENUMBER",
    // },
    {
        title: "Количество товаров",
        value: "SALES",
    },
    {
        title: "Статус",
        value: "STATUS",
    },
    {
        title: "QTR_ID",
        value: "QTR_ID",
    },
    {
        title: "Линия товара",
        value: "PRODUCTLINE",
    },
    {
        title: "MSRP",
        value: "MSRP",
    },
    {
        title: "Код товара",
        value: "PRODUCTCODE",
    },
    {
        title: "Имя заказчика",
        value: "CUSTOMERNAME",
    },
    {
        title: "Телефон",
        value: "PHONE",
    },
    {
        title: "Адрес",
        value: "ADDRESSLINE1",
    },
    {
        title: "Город",
        value: "CITY",
    },
    {
        title: "STATE",
        value: "STATE",
    },
    {
        title: "Почтовый индекс",
        value: "POSTALCODE",
    },
    {
        title: "Страна",
        value: "COUNTRY",
    },
    {
        title: "Территория",
        value: "TERRITORY",
    },
    // {
    //     title: "Фамилия",
    //     value: "CONTACTLASTNAME",
    // },
    // {
    //     title: "Имя",
    //     value: "CONTACTFIRSTNAME",
    // },
    {
        title: "Размер",
        value: "DEALSIZE",
    },
    {
        title: "Месяц",
        value: "MONTH_ID",
    },
    {
        title: "Год",
        value: "YEAR_ID",
    },
];
let coordinates = ['x', 'y', 'z'];
let propertiesInSeparateTables = [
    'ADDRESSLINE1',
    'DEALSIZE',
    'STATUS',
    'STATE',
    'COUNTRY',
    'POSTALCODE',
    'CITY',
    'PHONE',
    'QTR_ID',
    'PRODUCTLINE',
    'PRODUCTCODE',
    'CUSTOMERNAME',
    'TERRITORY',
];
let propertiesInFilter = [
    'MONTH_ID',
    'YEAR_ID',
    'STATUS',
    'PRODUCTLINE',
    // 'ORDERDATE',
    'COUNTRY',
    'CITY',
    'DEALSIZE',
    'ADDRESSLINE1',
];

export {
    allProperties,
    coordinates,
    propertiesInSeparateTables,
    propertiesInFilter,
}
