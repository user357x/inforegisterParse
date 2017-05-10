'use strict';

const getDocument = require(`${__dirname}/./lib/getDocument`);

const request = require(`${__dirname}/./request`);
const getUrl = require(`${__dirname}/./tools`).getUrl;
const parseRows = require(`${__dirname}/./tools`).parseRows;
const getLastPosition = require(`${__dirname}/./tools`).getLastPosition;

const getResult = require(`${__dirname}/./tools`).getResult;

request('https://www.inforegister.ee/11505200-TABRIN-OU')
	.then(document => {
		let result = getResult(document);
		console.log(result);
	})
	.catch(console.error);