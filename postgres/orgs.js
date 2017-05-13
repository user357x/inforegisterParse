'use strict';
 
module.exports = db => {
	return {
 		insert : (body, file, region, offset) => db.none(
 			`insert into public.orgs(body, file, region, "offset") values($1, $2, $3, $4)`, 
 			[body, file, region, offset]
		),
		getByRegion : (file, region) => db.any(
 			`select * from public.orgs where file = $1 and region = $2`, 
 			[file, region]
		),
		getLastPosition : (file, region) => db.oneOrNone(
			`select * 
			from public.orgs 
			where file = $1 and 
			region = $2
			order by id 
			desc 
			limit 1`,
			[file, region]
		)
	};
} 