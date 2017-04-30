'use strict';
 
const options = {
	extend : db => {
		db.orgs = require('./orgs')(db);
	},
	error : (error, e) => {
		if(e.cn) console.log('Ошибка соединения с базой данных');
	}
};

const db = require('pg-promise')(options);

module.exports = db; 