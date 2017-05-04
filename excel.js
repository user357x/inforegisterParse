'use strict';

global.config = require(`${__dirname}/config`);
global.db = require(`./postgres`)(config.postgres);

const xl = require('excel4node');
 
const wb = new xl.Workbook();

const wsAll = wb.addWorksheet('all');
const wsHarjumaa = wb.addWorksheet('harjumaa');

const style = wb.createStyle({
    font: {
        color: '#FF0800',
        size: 12
    }
});

db.task(function* () {

    wsAll.cell(1,1).string('name').style(style);
	wsAll.cell(1,2).string('phone').style(style);
	wsAll.cell(1,3).string('email').style(style);
	wsAll.cell(1,4).string('address').style(style);
	wsAll.cell(1,5).string('sphere').style(style);

	wsHarjumaa.cell(1,1).string('name').style(style);
	wsHarjumaa.cell(1,2).string('phone').style(style);
	wsHarjumaa.cell(1,3).string('email').style(style);
	wsHarjumaa.cell(1,4).string('address').style(style);
	wsHarjumaa.cell(1,5).string('sphere').style(style);

	let data, j = 2;

	data = yield db.orgs.getByRegion('OU', 'all');

	data.forEach((org, i) => {
		j = i + 2;
		//console.log(j);
		wsAll.cell(j, 1).string(org.body.name ? org.body.name : '');
		wsAll.cell(j, 2).string(org.body.phone ? org.body.phone : '');
		wsAll.cell(j, 3).string(org.body.email ? org.body.email : '');
		wsAll.cell(j, 4).string(org.body.address ? org.body.address : '');
		wsAll.cell(j, 5).string(org.body.sphere ? org.body.sphere : '');
	});

	data = yield db.orgs.getByRegion('OU', 'harjumaa');

	data.forEach((org, i) => {
		j = i + 2;
		//console.log(j);
		wsAll.cell(j, 1).string(org.body.name ? org.body.name : '');
		wsAll.cell(j, 2).string(org.body.phone ? org.body.phone : '');
		wsAll.cell(j, 3).string(org.body.email ? org.body.email : '');
		wsAll.cell(j, 4).string(org.body.address ? org.body.address : '');
		wsAll.cell(j, 5).string(org.body.sphere ? org.body.sphere : '');
	});

	wb.write('./xls/OU.xlsx');

}).catch(console.error);