create table 	h1b_fy2010_stg 	(
LCA_CASE_NUMBER	character varying(2000),	
STATUS	character varying(2000),	
LCA_CASE_SUBMIT	character varying(2000),	
DECISION_DATE	character varying(2000),	
LCA_CASE_EMPLOYMENT_START_DATE	character varying(2000),	
LCA_CASE_EMPLOYMENT_END_DATE	character varying(2000),	
LCA_CASE_EMPLOYER_NAME	character varying(2000),	
LCA_CASE_EMPLOYER_ADDRESS1	character varying(2000),	
LCA_CASE_EMPLOYER_ADDRESS2	character varying(2000),	
LCA_CASE_EMPLOYER_CITY	character varying(2000),	
LCA_CASE_EMPLOYER_STATE	character varying(2000),	
LCA_CASE_EMPLOYER_POSTAL_CODE	character varying(2000),	
LCA_CASE_SOC_CODE	character varying(2000),	
LCA_CASE_SOC_NAME	character varying(2000),	
LCA_CASE_JOB_TITLE	character varying(2000),	
LCA_CASE_WAGE_RATE_FROM	character varying(2000),	
LCA_CASE_WAGE_RATE_TO	character varying(2000),	
TOTAL_WORKERS	character varying(2000),	
WORK_LOCATION_CITY1	character varying(2000),	
WORK_LOCATION_STATE1	character varying(2000),	
PW_1	character varying(2000),	
PW_UNIT_1	character varying(2000),	
PW_SOURCE_1	character varying(2000),	
OTHER_WAGE_SOURCE_1	character varying(2000),	
YR_SOURCE_PUB_1	character varying(2000),	
WORK_LOCATION_CITY2	character varying(2000),	
WORK_LOCATION_STATE2	character varying(2000),	
PW_2	character varying(2000),	
PW_UNIT_2	character varying(2000),	
PW_SOURCE_2	character varying(2000),	
OTHER_WAGE_SOURCE_2	character varying(2000),	
YR_SOURCE_PUB_2	character varying(2000),	
LCA_CASE_NAICS_CODE	character varying(2000)	
		
		
		
		
		
		
		);
		
		
		
copy 	h1b_fy2010_stg 	(
LCA_CASE_NUMBER	,	
STATUS	,	
LCA_CASE_SUBMIT	,	
DECISION_DATE	,	
LCA_CASE_EMPLOYMENT_START_DATE	,	
LCA_CASE_EMPLOYMENT_END_DATE	,	
LCA_CASE_EMPLOYER_NAME	,	
LCA_CASE_EMPLOYER_ADDRESS1	,	
LCA_CASE_EMPLOYER_ADDRESS2	,	
LCA_CASE_EMPLOYER_CITY	,	
LCA_CASE_EMPLOYER_STATE	,	
LCA_CASE_EMPLOYER_POSTAL_CODE	,	
LCA_CASE_SOC_CODE	,	
LCA_CASE_SOC_NAME	,	
LCA_CASE_JOB_TITLE	,	
LCA_CASE_WAGE_RATE_FROM	,	
LCA_CASE_WAGE_RATE_TO	,	
TOTAL_WORKERS	,	
WORK_LOCATION_CITY1	,	
WORK_LOCATION_STATE1	,	
PW_1	,	
PW_UNIT_1	,	
PW_SOURCE_1	,	
OTHER_WAGE_SOURCE_1	,	
YR_SOURCE_PUB_1	,	
WORK_LOCATION_CITY2	,	
WORK_LOCATION_STATE2	,	
PW_2	,	
PW_UNIT_2	,	
PW_SOURCE_2	,	
OTHER_WAGE_SOURCE_2	,	
YR_SOURCE_PUB_2	,	
LCA_CASE_NAICS_CODE		
		
		
		
		
		
	)	
FROM 'D:\AppData\oflc\raw_h1b\csv\H1B_FY2010.csv' DELIMITER ',' CSV HEADER;