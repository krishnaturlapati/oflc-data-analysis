CREATE TABLE persons
(
  id serial NOT NULL,
  first_name character varying(50),
  last_name character varying(50),
  dob date,
  email character varying(255),
  CONSTRAINT persons_pkey PRIMARY KEY (id)
)


COPY persons(first_name,last_name,dob,email) 

COPY h1b_fy2008 (
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
FROM 'D:\AppData\oflc\raw_h1b\stg\H1B_FY2008_csv.csv' DELIMITER ',' CSV HEADER;



drop table h1b_fy2008;
CREATE TABLE h1b_fy2008 (
  submitted_date character varying(2000),
  case_no character varying(2000),
  program character varying(2000),
  name character varying(2000),
  address1 character varying(2000),
  address2 character varying(2000),
  city character varying(2000),
  state character varying(2000),
  postal_code character varying(2000),
  nbr_immigrants character varying(2000),
  begin_date character varying(2000),
  end_date character varying(2000),
  job_title character varying(2000),
  dol_decision_date character varying(2000),
  certified_begin_date character varying(2000),
  certified_end_date character varying(2000),
  job_code character varying(2000),
  approval_status character varying(2000),
  wage_rate_1 character varying(2000),
  rate_per_1 character varying(2000),
  max_rate_1 character varying(2000),
  part_time_1 character varying(2000),
  city_1 character varying(2000),
  state_1 character varying(2000),
  prevailing_wage_1 character varying(2000),
  wage_source_1 character varying(2000),
  yr_source_pub_1 character varying(2000),
  other_wage_source_1 character varying(2000),
  wage_rate_2 character varying(2000),
  rate_per_2 character varying(2000),
  max_rate_2 character varying(2000),
  part_time_2 character varying(2000),
  city_2 character varying(2000),
  state_2 character varying(2000),
  prevailing_wage_2 character varying(2000),
  wage_source_2 character varying(2000),
  yr_source_pub_2 character varying(2000),
  other_wage_source_2 character varying(2000),
  withdrawn character varying(2000),
  occupational_title character varying(2000)
)

select approval_status, count(*) from h1b_fy2008 group by approval_status 

select distinct name from h1b_fy2008 where state_1 = 'NJ' and lower(job_title) like '%data%' limit 10;

create table h1b_fy2019 (CASE_NUMBER  character varying(2000),
						 CASE_STATUS  character varying(2000),
						 CASE_SUBMITTED  character varying(2000),
						 DECISION_DATE  character varying(2000),
						 VISA_CLASS  character varying(2000),EMPLOYMENT_START_DATE  character varying(2000),EMPLOYMENT_END_DATE  character varying(2000),EMPLOYER_NAME  character varying(2000),EMPLOYER_BUSINESS_DBA  character varying(2000),EMPLOYER_ADDRESS  character varying(2000),EMPLOYER_CITY  character varying(2000),EMPLOYER_STATE  character varying(2000),EMPLOYER_POSTAL_CODE  character varying(2000),EMPLOYER_COUNTRY  character varying(2000),EMPLOYER_PROVINCE  character varying(2000),EMPLOYER_PHONE  character varying(2000),EMPLOYER_PHONE_EXT  character varying(2000),SECONDARY_ENTITY  character varying(2000),SECONDARY_ENTITY_BUSINESS_NAME  character varying(2000),AGENT_REPRESENTING_EMPLOYER  character varying(2000),AGENT_ATTORNEY_NAME  character varying(2000),AGENT_ATTORNEY_CITY  character varying(2000),AGENT_ATTORNEY_STATE  character varying(2000),JOB_TITLE  character varying(2000),SOC_CODE  character varying(2000),SOC_NAME  character varying(2000),NAICS_CODE  character varying(2000),TOTAL_WORKERS  character varying(2000),NEW_EMPLOYMENT  character varying(2000),CONTINUED_EMPLOYMENT  character varying(2000),CHANGE_PREVIOUS_EMPLOYMENT  character varying(2000),NEW_CONCURRENT_EMP  character varying(2000),CHANGE_EMPLOYER  character varying(2000),AMENDED_PETITION  character varying(2000),FULL_TIME_POSITION  character varying(2000),PREVAILING_WAGE  character varying(2000),PW_UNIT_OF_PAY  character varying(2000),PW_WAGE_LEVEL  character varying(2000),PW_SOURCE  character varying(2000),PW_SOURCE_YEAR  character varying(2000),PW_SOURCE_OTHER  character varying(2000),WAGE_RATE_OF_PAY_FROM  character varying(2000),WAGE_RATE_OF_PAY_TO  character varying(2000),WAGE_UNIT_OF_PAY  character varying(2000),H1B_DEPENDENT  character varying(2000),WILLFUL_VIOLATOR  character varying(2000),SUPPORT_H1B  character varying(2000),STATUTORY_BASIS  character varying(2000),APPENDIX_ATTACHMENT  character varying(2000),LABOR_CON_AGREE  character varying(2000),PUBLIC_DISCLOSURE_LOCATION  character varying(2000),WORKSITE_CITY  character varying(2000),WORKSITE_COUNTY  character varying(2000),WORKSITE_STATE  character varying(2000),WORKSITE_POSTAL_CODE  character varying(2000),ORIGINAL_CERT_DATE character varying(2000));						 
						 
copy  h1b_fy2019 (CASE_NUMBER  ,CASE_STATUS  ,CASE_SUBMITTED  ,DECISION_DATE  ,VISA_CLASS  ,EMPLOYMENT_START_DATE  ,EMPLOYMENT_END_DATE  ,EMPLOYER_NAME  ,EMPLOYER_BUSINESS_DBA  ,EMPLOYER_ADDRESS  ,EMPLOYER_CITY  ,EMPLOYER_STATE  ,EMPLOYER_POSTAL_CODE  ,EMPLOYER_COUNTRY  ,EMPLOYER_PROVINCE  ,EMPLOYER_PHONE  ,EMPLOYER_PHONE_EXT  ,SECONDARY_ENTITY  ,SECONDARY_ENTITY_BUSINESS_NAME  ,AGENT_REPRESENTING_EMPLOYER  ,AGENT_ATTORNEY_NAME  ,AGENT_ATTORNEY_CITY  ,AGENT_ATTORNEY_STATE  ,JOB_TITLE  ,SOC_CODE  ,SOC_NAME  ,NAICS_CODE  ,TOTAL_WORKERS  ,NEW_EMPLOYMENT  ,CONTINUED_EMPLOYMENT  ,CHANGE_PREVIOUS_EMPLOYMENT  ,NEW_CONCURRENT_EMP  ,CHANGE_EMPLOYER  ,AMENDED_PETITION  ,FULL_TIME_POSITION  ,PREVAILING_WAGE  ,PW_UNIT_OF_PAY  ,PW_WAGE_LEVEL  ,PW_SOURCE  ,PW_SOURCE_YEAR  ,PW_SOURCE_OTHER  ,WAGE_RATE_OF_PAY_FROM  ,WAGE_RATE_OF_PAY_TO  ,WAGE_UNIT_OF_PAY  ,H1B_DEPENDENT  ,WILLFUL_VIOLATOR  ,SUPPORT_H1B  ,STATUTORY_BASIS  ,APPENDIX_ATTACHMENT  ,LABOR_CON_AGREE  ,PUBLIC_DISCLOSURE_LOCATION  ,WORKSITE_CITY  ,WORKSITE_COUNTY  ,WORKSITE_STATE  ,WORKSITE_POSTAL_CODE  ,ORIGINAL_CERT_DATE )
FROM 'D:\AppData\oflc\raw_h1b\stg\H1B_FY2019.csv' DELIMITER ',' CSV HEADER;


select case_status, count(*) from h1b_fy2019 group by case_status

"CERTIFIED"	"375444"
"CERTIFIED-WITHDRAWN"	"20193"
"DENIED"	"4082"
"WITHDRAWN"	"12705"

select * from h1b_fy2019 limit 10