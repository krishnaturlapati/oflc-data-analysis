create table 	h1b_fy2008_stg 	(
SUBMITTED_DATE	character varying(2000),	
CASE_NO	character varying(2000),	
PROGRAM	character varying(2000),	
NAME	character varying(2000),	
ADDRESS1	character varying(2000),	
ADDRESS2	character varying(2000),	
CITY	character varying(2000),	
STATE	character varying(2000),	
POSTAL_CODE	character varying(2000),	
NBR_IMMIGRANTS	character varying(2000),	
BEGIN_DATE	character varying(2000),	
END_DATE	character varying(2000),	
JOB_TITLE	character varying(2000),	
DOL_DECISION_DATE	character varying(2000),	
CERTIFIED_BEGIN_DATE	character varying(2000),	
CERTIFIED_END_DATE	character varying(2000),	
JOB_CODE	character varying(2000),	
APPROVAL_STATUS	character varying(2000),	
WAGE_RATE_1	character varying(2000),	
RATE_PER_1	character varying(2000),	
MAX_RATE_1	character varying(2000),	
PART_TIME_1	character varying(2000),	
CITY_1	character varying(2000),	
STATE_1	character varying(2000),	
PREVAILING_WAGE_1	character varying(2000),	
WAGE_SOURCE_1	character varying(2000),	
YR_SOURCE_PUB_1	character varying(2000),	
OTHER_WAGE_SOURCE_1	character varying(2000),	
WAGE_RATE_2	character varying(2000),	
RATE_PER_2	character varying(2000),	
MAX_RATE_2	character varying(2000),	
PART_TIME_2	character varying(2000),	
CITY_2	character varying(2000),	
STATE_2	character varying(2000),	
PREVAILING_WAGE_2	character varying(2000),	
WAGE_SOURCE_2	character varying(2000),	
YR_SOURCE_PUB_2	character varying(2000),	
OTHER_WAGE_SOURCE_2	character varying(2000),	
WITHDRAWN	character varying(2000),	
OCCUPATIONAL_TITLE	character varying(2000)	);


COPY h1b_fy2008_stg (
 submitted_date ,
  case_no ,
  program ,
  name ,
  address1 ,
  address2 ,
  city ,
  state ,
  postal_code ,
  nbr_immigrants ,
  begin_date ,
  end_date ,
  job_title ,
  dol_decision_date ,
  certified_begin_date ,
  certified_end_date ,
  job_code ,
  approval_status ,
  wage_rate_1 ,
  rate_per_1 ,
  max_rate_1 ,
  part_time_1 ,
  city_1 ,
  state_1 ,
  prevailing_wage_1 ,
  wage_source_1 ,
  yr_source_pub_1 ,
  other_wage_source_1 ,
  wage_rate_2 ,
  rate_per_2 ,
  max_rate_2 ,
  part_time_2 ,
  city_2 ,
  state_2 ,
  prevailing_wage_2 ,
  wage_source_2 ,
  yr_source_pub_2 ,
  other_wage_source_2 ,
  withdrawn ,
  occupational_title )
FROM 'D:\AppData\oflc\raw_h1b\csv\H1B_FY2008.csv' DELIMITER ',' CSV HEADER;