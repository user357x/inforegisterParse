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

	/*wsAll.cell(j, 1).string('org.body.name').style(style);
	wsAll.cell(j, 2).string('org.body.phone').style(style);
	wsAll.cell(j, 3).string('org.body.email').style(style);
	wsAll.cell(j, 4).string('org.body.address').style(style);*/

	wb.write('./xls/OU.xlsx');

}).catch(console.error);


 
/*
// Add Worksheets to the workbook 
var ws = wb.addWorksheet('Sheet 1');
var ws2 = wb.addWorksheet('Sheet 2');
 
// Create a reusable style 
var style = wb.createStyle({
    font: {
        color: '#FF0800',
        size: 12
    },
    numberFormat: '$#,##0.00; ($#,##0.00); -'
});
 
// Set value of cell A1 to 100 as a number type styled with paramaters of style 
ws.cell(1,1).number(100).style(style);
 
// Set value of cell B1 to 300 as a number type styled with paramaters of style 
ws.cell(1,2).number(200).style(style);
 
// Set value of cell C1 to a formula styled with paramaters of style 
ws.cell(1,3).formula('A1 + B1').style(style);
 
// Set value of cell A2 to 'string' styled with paramaters of style 
ws.cell(2,1).string('string').style(style);
 
// Set value of cell A3 to true as a boolean type styled with paramaters of style but with an adjustment to the font size. 
ws.cell(3,1).bool(true).style(style).style({font: {size: 14}});
 
wb.write('./xls/OU.xlsx');
*/