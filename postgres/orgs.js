'use strict';
 
module.exports = db => {
	return {
 		insert : (body, file, region) => db.none(
 			`insert into public.orgs(body, file, region) values($1, $2, $3)`, 
 			[body, file, region]
		),
		getByRegion : (file, region) => db.any(
 			`select * from public.orgs where file = $1 and region = $2`, 
 			[file, region]
		)
	};
} 