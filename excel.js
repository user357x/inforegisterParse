'use strict';

global.config = require(`${__dirname}/./config`);
global.db = require(`${__dirname}/./postgres`)(config.postgres);

const xl = require('excel4node');

let otsing = 'OU';
let region = 'all';

db.task(function* () {

	let wb, ws, emails, style, count = 0, j = 2, fileCount = 1;

	const data = yield db.orgs.getByRegion(otsing, region);
	
	data.forEach((org, i) => {

		emails = org.body.email ? org.body.email.split(', ').filter(email => email.length > 0) : [];

		emails.forEach((email, e) => {

			if(count === 0 || count % 50000 === 0) {

				wb = new xl.Workbook();

				style = wb.createStyle({
				    font: {
				        color: '#FF0800',
				        size: 12
				    }
				});

				ws = wb.addWorksheet("orgs");

			    ws.cell(1,1).string('name').style(style);
				ws.cell(1,2).string('phone').style(style);
				ws.cell(1,3).string('email').style(style);
				ws.cell(1,4).string('address').style(style);
				ws.cell(1,5).string('sphere').style(style);
				j = 2;
				
			}

			j++;
			ws.cell(j, 1).string(org.body.name ? org.body.name : '');
			ws.cell(j, 2).string(org.body.phone ? org.body.phone : '');
			ws.cell(j, 3).string(email);
			ws.cell(j, 4).string(org.body.address ? org.body.address : '');
			ws.cell(j, 5).string(org.body.sphere ? org.body.sphere : '');

			if(count % 50000 === 0 || (i + 1 === data.length && e + 1 === emails.length)) {

				wb.write(`./xls/${otsing}/${region}/${fileCount}.xlsx`);
				fileCount++;

			}

			count++;

		});

	});
	
}).catch(console.error);