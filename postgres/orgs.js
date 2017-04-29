'use strict';
 
module.exports = db => {
	return {
 		insert : body => db.none(`insert into public.orgs(body) values($1)`, [body])
	};
} 