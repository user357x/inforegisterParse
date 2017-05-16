'use strict';

global.config = require(`${__dirname}/./config`);
global.db = require(`${__dirname}/./postgres`)(config.postgres);

const xl = require('excel4node');
 
const wb = new xl.Workbook();

const style = wb.createStyle({
    font: {
        color: '#FF0800',
        size: 12
    }
});

let all = 'all';
let harjumaa = 'harjumaa';

db.task(function* () {

	let data, j = 2;

	let ws = wb.addWorksheet(harjumaa);

    ws.cell(1,1).string('name').style(style);
	ws.cell(1,2).string('phone').style(style);
	ws.cell(1,3).string('email').style(style);
	ws.cell(1,4).string('address').style(style);
	ws.cell(1,5).string('sphere').style(style);

	data = yield db.orgs.getByRegion('TU', harjumaa);

	data.forEach((org, i) => {
		j = i + 2;
		//console.log(j);
		ws.cell(j, 1).string(org.body.name ? org.body.name : '');
		ws.cell(j, 2).string(org.body.phone ? org.body.phone : '');
		ws.cell(j, 3).string(org.body.email ? org.body.email : '');
		ws.cell(j, 4).string(org.body.address ? org.body.address : '');
		ws.cell(j, 5).string(org.body.sphere ? org.body.sphere : '');
	});
	

	/*
	let wsHarjumaa = wb.addWorksheet('harjumaa');

	wsHarjumaa.cell(1,1).string('name').style(style);
	wsHarjumaa.cell(1,2).string('phone').style(style);
	wsHarjumaa.cell(1,3).string('email').style(style);
	wsHarjumaa.cell(1,4).string('address').style(style);
	wsHarjumaa.cell(1,5).string('sphere').style(style);

	//data = yield db.orgs.getByRegion('OU', 'harjumaa');
	data = yield db.any(
 			`select * 
 			from public.orgs 
 			where file = $1 and 
 			region = $2 
 			order by id 
 			offset $3 
 			limit $4`, 
 			['OU', 'all', 0, 57130]
		)

	data.forEach((org, i) => {
		j = i + 2;
		//console.log(j);
		wsHarjumaa.cell(j, 1).string(org.body.name ? org.body.name : '');
		wsHarjumaa.cell(j, 2).string(org.body.phone ? org.body.phone : '');
		wsHarjumaa.cell(j, 3).string(org.body.email ? org.body.email : '');
		wsHarjumaa.cell(j, 4).string(org.body.address ? org.body.address : '');
		wsHarjumaa.cell(j, 5).string(org.body.sphere ? org.body.sphere : '');
	});
	*/

	wb.write('./xls/TU/harjumaa.xlsx');

}).catch(console.error);