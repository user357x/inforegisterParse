'use strict';

const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const agent = require("superagent");

module.exports = (url, wrap) => new Promise((resolve, reject) => {
    console.log(url)
    setTimeout(() => {
        agent
            .get(url)
            .end((err, res) => {
                if(err) {
                    reject(err);
                }
                else {
                    let w1 = '';
                    let w2 = '';
                    if(wrap && wrap.length === 2) {
                        w1 = wrap[0];
                        w2 = wrap[1];
                    }
                    if(res.text) resolve(new JSDOM(w1 + res.text + w2).window.document);
                    else resolve(null);
                }
            });
    }, 1000);
});