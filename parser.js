'use strict';

const getDocument = require(`${__dirname}/./lib/getDocument`);

const request = require(`${__dirname}/./request`);

const getUrl = require(`${__dirname}/./tools`).getUrl;
const parseRows = require(`${__dirname}/./tools`).parseRows;
const getLastPosition = require(`${__dirname}/./tools`).getLastPosition;

module.exports = function* () {

    //yield db.none('TRUNCATE TABLE public.orgs');

    let document, region, rows, offset, url, task;

    let wrap = ['<table>', '</table>'];

    const position = yield db.task(getLastPosition(1));

    url = position.url;
    offset = position.offset;

    document = yield request(url, offset > 0 ? wrap : null);

    while(document) {

        yield parseRows(document, position.otsing, position.region, offset);

        offset += 20;

        url = getUrl(position.otsing, position.region, offset);

        document = yield request(url, wrap);
    }

};