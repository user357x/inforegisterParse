'use strict';

global.config = require(`${__dirname}/./config`);
global.db = require(`${__dirname}/./postgres`)(config.postgres);

global.errorHandler = require(`${__dirname}/./lib/errorHandler`);

const parser = require(`${__dirname}/./parser`);

db.task(parser).catch(errorHandler);