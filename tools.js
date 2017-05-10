'use strict';

const request = require(`${__dirname}/./request`);

const baseUrl = 'https://www.inforegister.ee/';

const otsings = [
    'OU',
    'TU',
    'as',
    'fie',
    'mtu',
    'ku'
];

const harjumaa = { county : 1, name : 'harjumaa' };

const regions = [
    { county : 2, name : 'viljandimaa' },
    { county : 3, name : 'polvamaa' },
    { county : 4, name : 'ida-virumaa' },
    { county : 5, name : 'tartumaa' },
    { county : 6, name : 'jarvamaa' },
    { county : 7, name : 'vorumaa' },
    { county : 8, name : 'parnumaa' },
    { county : 9, name : 'laane-virumaa' },
    { county : 10, name : 'hiiumaa' },
    { county : 11, name : 'laanemaa' },
    { county : 12, name : 'valgamaa' },
    { county : 13, name : 'raplamaa' },
    { county : 14, name : 'jogevamaa' },
    { county : 15, name : 'saaremaa' },
    { county : 16, name : 'polva' }
];

const positions = [
    { name : 'juriidiline aadress', value : 'address' },
    { name : 'telefon', value : 'phone' },
    { name : 'e-post', value : 'email' }
];

const getUrl = (otsing, region, offset) => {

    let result, reg;

    let isArr = region instanceof Array;

    if(offset !== undefined) {
        reg = isArr ? region.map(r => r.county).join('-') : region.county;
        result = `${baseUrl}index.php?` +
            `option=com_krdx_search&` +
            `view=ajax&` +
            `data=searchResults&` +
            `engine=quick&` +
            `q=${otsing}&` +
            `selCounty=${reg}&` +
            `offset=${offset}&` +
            `tmpl=raw`;
    }
    else {
        reg = isArr ? region.map(r => r.name).join('/') : region.name;
        result = `${baseUrl}otsing/${otsing}/${reg}`;
    }

    return result;
};

const getResult = (document) => {

    const result = {
        name : null,
        address : null,
        phone : null,
        email : null,
        sphere : null
    }

    const h = document.querySelector('h1')

    if(h) {
        result.name = h.textContent.trim();
    }

    const a = document.querySelector('#emtaktable a');

    if(a) {
        result.sphere = a.textContent.trim();
    }

    const table = document.querySelector('.contacttable .table');

    let trs = [];

    if(table) {
        trs = table.querySelectorAll('tr');
    }

    let name;

    for(let i = 0; i < trs.length; i++) {

        name = trs[i].querySelectorAll('td')[0].textContent.trim().toLowerCase();

        positions.forEach(position => {
            if(position.name === name) {
                result[position.value] = trs[i].querySelectorAll('td')[1].textContent.trim();
            }
        })

    }

    return result;
};

const getLastPosition = (i) => function* () {

    const result = {};

    let region = harjumaa;
    let otsing = otsings[i];

    const position = yield db.orgs.getLastPosition();

    if(!position) {

        result.url = getUrl(otsing, region);

        result.offset = 0;
    
    }
    else {

        result.url = getUrl(otsing, region, position.offset);

        result.offset = +position.offset;

    }

    result.region = region;
    result.otsing = otsing;

    return result;
};

const parseRows = (document, file, region, offset) => {

    const rows = document.querySelectorAll('.searchresult-row');

    let orgCard, td, a, href, onclick, tables;

    const urls = [].filter
        .call(rows, row => {
            return row.querySelectorAll('td')[4].textContent.indexOf('Registrikood') !== -1;
        })
        .map(row => {

            td = row.querySelectorAll('td')[1];

            a = td.querySelector('a');

            if(a) {
                href = a.href;
            }
            else {
                onclick = td.getAttribute("onclick").trim();
                href = `${baseUrl}${onclick.slice(23, -1)}`;
            }

            return href
        });

    if(!urls || !urls.length) return null;

    const task = function* () {
        for(let i = 0; i < urls.length; i++) {

            orgCard = yield request(urls[i]);
            
            yield db.orgs.insert(
                getResult(orgCard),
                file,
                region instanceof Array ? 'all' : region.name,
                offset
            );
        }
    };

    return task;
};

exports.getUrl = getUrl;
exports.getResult = getResult;
exports.getLastPosition = getLastPosition;
exports.parseRows = parseRows;