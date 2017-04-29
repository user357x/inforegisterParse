'use strict';

const jsdom = require("jsdom");

module.exports = url => new Promise((resolve, reject) => jsdom.env(url, (error, window) => error ? reject(error) : resolve(window.document)));