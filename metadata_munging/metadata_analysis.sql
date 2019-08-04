/* Row count */

select sum(rc) from (
select '2019' as yr, count(*) as rc from h1b_fy2019_stg
union
select '2018' as yr, count(*) as rc from h1b_fy2018_stg
union
select '2017' as yr, count(*) as rc from h1b_fy2017_stg
union
select '2016' as yr, count(*) as rc from h1b_fy2016_stg
union
select '2015' as yr, count(*) as rc from h1b_fy2015_stg
union
select '2014' as yr, count(*) as rc from h1b_fy2014_stg
union
select '2013' as yr, count(*) as rc from h1b_fy2013_stg
union
select '2012' as yr, count(*) as rc from h1b_fy2012_stg
union
select '2011' as yr, count(*) as rc from h1b_fy2011_stg
union
select '2010' as yr, count(*) as rc from h1b_fy2010_stg
union
select '2009-1' as yr, count(*) as rc from h1b_fy2009_1_stg
union
select '2009-2' as yr, count(*) as rc from h1b_fy2009_2_stg
union
select '2008' as yr, count(*) as rc from h1b_fy2008_stg

) t

// "5799018"


/* row count per year */
select * from (
select '2019' as yr, count(*) as rc from h1b_fy2019_stg
union
select '2018' as yr, count(*) as rc from h1b_fy2018_stg
union
select '2017' as yr, count(*) as rc from h1b_fy2017_stg
union
select '2016' as yr, count(*) as rc from h1b_fy2016_stg
union
select '2015' as yr, count(*) as rc from h1b_fy2015_stg
union
select '2014' as yr, count(*) as rc from h1b_fy2014_stg
union
select '2013' as yr, count(*) as rc from h1b_fy2013_stg
union
select '2012' as yr, count(*) as rc from h1b_fy2012_stg
union
select '2011' as yr, count(*) as rc from h1b_fy2011_stg
union
select '2010' as yr, count(*) as rc from h1b_fy2010_stg
union
select '2009-1' as yr, count(*) as rc from h1b_fy2009_1_stg
union
select '2009-2' as yr, count(*) as rc from h1b_fy2009_2_stg
union
select '2008' as yr, count(*) as rc from h1b_fy2008_stg

) t order by yr

/*
"2008"	"405641"
"2009-1"	"268243"
"2009-2"	"87988"
"2010"	"342575"
"2011"	"358857"
"2012"	"415845"
"2013"	"442275"
"2014"	"519504"
"2015"	"618804"
"2016"	"647852"
"2017"	"624650"
"2018"	"654360"
"2019"	"412424"
*/