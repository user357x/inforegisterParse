'use strict';
 
const options = {
	extend : db => {
		db.orgs = require('./orgs')(db);
		db.links = require('./links')(db);
	},
	error : (error, e) => {
		if(e.cn) console.log('Ошибка соединения с базой данных');
	}
};

const db = require('pg-promise')(options);

module.exports = db; 