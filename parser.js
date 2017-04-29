'use strict';

const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const agent = require("superagent");

const getDocument = require('./lib/getDocument');

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

//https://www.inforegister.ee/otsing/OU/viljandimaa/polvamaa/ida-virumaa/tartumaa/jarvamaa/vorumaa/parnumaa/laane-virumaa/hiiumaa/
//laanemaa/valgamaa/raplamaa/jogevamaa/saaremaa/polva

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

const getUrls = () => {

    const result = [];

    let region;

    otsings.forEach(otsing => {
        [regions, harjumaa].forEach(reg => {
            region = reg instanceof Array ? reg.map(r => r.name).join('/') : reg.name;
            result.push({ 
                value : `${baseUrl}otsing/${otsing}/${region}`, 
                otsing : otsing,
                region : reg
            });
        });
    });

    return result;
};

const request = (url, wrap) => new Promise((resolve, reject) => {
    console.log(url)
    setTimeout(() => {
        agent
            .get(url)
            .end((err, res) => {
                if(err) {
                    reject(err);
                }
                else {
                    let w1 = '';
                    let w2 = '';
                    if(wrap && wrap.length === 2) {
                        w1 = wrap[0];
                        w2 = wrap[1];
                    }
                    if(res.text) resolve(new JSDOM(w1 + res.text + w2).window.document);
                    else resolve(null);
                }
            });
    }, 1000);
});


const getResult = (name, trs) => {

    const result = {
        name : name,
        address : null,
        phone : null,
        email : null
    } 

    const keys = [
        { text : 'Juriidiline aadress', value : 'address' },
        { text : 'Telefon', value : 'phone' },
        { text : 'E-post', value : 'email' }
    ];

    for(let i = 0; i < trs.length; i++) {

        let text = trs[i].querySelectorAll('td')[0].textContent.trim();

        //console.log(text);

        keys.forEach(key => {
            if(key.text === text) {
                result[key.value] = trs[i].querySelectorAll('td')[1].textContent.trim();
            }
        })

    }

    return result;

}

const parseRows = (document, fileName, cat) => {

    const rows = document.querySelectorAll('.searchresult-row');

    let trs, tds, orgCard, tr, td, a, href, onclick, tables, table;

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

    if(!urls || !urls.length) return;

    return db.task(function* () {
        for(let i = 0; i < urls.length; i++) {

            orgCard = yield request(urls[i]);

            table = orgCard.querySelectorAll('table')[3];

            trs = table.querySelectorAll('tr');

            //console.log(trs.length);

            yield db.orgs.insert(getResult(orgCard.querySelector('h1').textContent, trs));
        }
    }).catch(errorHandler);

};

module.exports = function* () {

    yield db.none('TRUNCATE TABLE public.orgs');

    let document, region, rows, offset, url;

    const urls = getUrls();

    for(let i = 0; i < urls.length; i++) {

        document = yield request(urls[i].value);

        offset = 20;

        while(document) {

            yield parseRows(document);

            region = urls[i].region instanceof Array ? urls[i].region.map(r => r.county).join('-') : urls[i].region.county;

            url = `${baseUrl}index.php?` +
                `option=com_krdx_search&` +
                `view=ajax&` +
                `data=searchResults&` +
                `engine=quick&` +
                `q=${urls[i].otsing}&` +
                `selCounty=${region}&` +
                `offset=${offset}&` +
                `tmpl=raw`;

            offset += 20;

            document = yield request(url, ['<table>', '</table>']);

            //console.log(document);

        }

    }

};