'use strict';

global.config = require(`${__dirname}/config`);
global.db = require(`./postgres`)(config.postgres);

global.errorHandler = require('./lib/errorHandler');

const parser = require('./parser');

db.task(parser).catch(errorHandler);