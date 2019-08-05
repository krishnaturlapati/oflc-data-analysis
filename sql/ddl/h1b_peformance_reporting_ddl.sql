
create table h1b_yearly_performance_reporting
(
CASE_NUMBER  character varying(100),
CASE_STATUS  integer,
CASE_SUBMITTED date,
EMPLOYMENT_START_DATE date,
EMPLOYMENT_END_DATE date,
EMPLOYMENT_DURATION_YEARS integer,
EMPLOYER_STATE  character varying(10),
US_REGION character varying(100),
JOB_TITLE  character varying(1000),
SOC_CODE character varying(1000),
SOC_NAME character varying(1000),
NAICS_CODE character varying(10),
FULL_TIME_POSITION integer,
PREVAILING_WAGE float, 
PW_UNIT_OF_PAY character varying(100),
ANNUAL_SALARY float, 
ANNUAL_SALARY_BAND character varying(100), 
PW_WAGE_LEVEL character varying(100),
NAICS_CODE_2 integer,
NAICS_CODE_2_DESC character varying(100),
YYYY integer
);