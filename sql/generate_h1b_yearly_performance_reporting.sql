
insert into h1b_yearly_performance_reporting (
CASE_NUMBER  ,
CASE_STATUS  ,
CASE_SUBMITTED ,
EMPLOYMENT_START_DATE,
EMPLOYMENT_END_DATE,
EMPLOYMENT_DURATION_YEARS ,
EMPLOYER_STATE  ,
US_REGION ,
JOB_TITLE  ,
SOC_CODE ,
SOC_NAME ,
NAICS_CODE ,
FULL_TIME_POSITION ,
PREVAILING_WAGE , 
PW_UNIT_OF_PAY ,
ANNUAL_SALARY ,
ANNUAL_SALARY_BAND,  
PW_WAGE_LEVEL ,
NAICS_CODE_2 ,
NAICS_CODE_2_DESC ,
YYYY )

select 
CASE_NUMBER  ,
CASE_STATUS  ,
CASE_SUBMITTED ,
EMPLOYMENT_START_DATE,
EMPLOYMENT_END_DATE,
DATE_PART('year', employment_end_date) - DATE_PART('year', employment_start_date) as EMPLOYMENT_DURATION_YEARS,  
EMPLOYER_STATE  ,
US_REGION ,
JOB_TITLE  ,
SOC_CODE ,
SOC_NAME ,
NAICS_CODE ,
FULL_TIME_POSITION ,
PREVAILING_WAGE , 
PW_UNIT_OF_PAY ,
ANNUAL_SALARY ,
case 
	when annual_salary between 0 and 50000 then 'b1'
	when annual_salary between 50001 and 100000 then 'b2'
	when annual_salary between 100001 and 150000 then 'b3'
	when annual_salary between 150001 and 200000 then 'b4'
	when annual_salary between 200000 and 250000 then 'b5'
	when annual_salary > 250000 then  'b6' 
end as annual_salary_band,
PW_WAGE_LEVEL ,
NAICS_CODE_2 ,
NAICS_CODE_2_DESC ,
YYYY


from (

select 
CASE_NUMBER, 

case 
	when lower(CASE_STATUS) = 'certified' then 1 
	when lower(CASE_STATUS) = 'denied' then 0
	when lower(CASE_STATUS) = 'certified-withdrawn' then 0
 	when lower(CASE_STATUS) = 'withdrawn' then 0
 end as CASE_STATUS,

cast(CASE_SUBMITTED as date) as CASE_SUBMITTED ,

cast(EMPLOYMENT_START_DATE as date) as EMPLOYMENT_START_DATE, 

cast(EMPLOYMENT_END_DATE as date) as EMPLOYMENT_END_DATE, 
EMPLOYER_STATE,
t2.region as US_REGION,
JOB_TITLE,
SOC_CODE,
SOC_NAME,
NAICS_CODE,

case 
	when FULL_TIME_POSITION = 'Y' then 1 
	when FULL_TIME_POSITION = 'N' then 0 
end as FULL_TIME_POSITION ,

case 
	when PREVAILING_WAGE = 'N/A' then 0
	when PREVAILING_WAGE is null then 0
	else cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float) 
end as PREVAILING_WAGE,

PW_UNIT_OF_PAY,

case 
	when lower(pw_unit_of_pay) = 'year' then cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float) 
	when pw_unit_of_pay is null and PREVAILING_WAGE = 'N/A' then 0
	when pw_unit_of_pay is null and (cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float) = 0) then 0
	when pw_unit_of_pay is null and (PREVAILING_WAGE is null ) then 0
	when lower(pw_unit_of_pay) = 'month' then 12*cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float)
	when lower(pw_unit_of_pay) = 'bi-weekly' then 26*cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float)
	when lower(pw_unit_of_pay) = 'weekly' then 52*cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float)
	when lower(pw_unit_of_pay) = 'hour' then 2080*cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float)
end as ANNUAL_SALARY,

PW_WAGE_LEVEL,

t3.naics_2 as NAICS_CODE_2,

t3.naics_description as NAICS_CODE_2_DESC,

2019 as YYYY 

from h1b_fy2019_stg as t1
join us_state_regions as t2
on t2.state_code = t1.EMPLOYER_STATE
join naics_code_lookup as  t3
on cast(substring(t1.naics_code, 1,2) as integer) = t3.naics_2 
) a 

