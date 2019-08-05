/* gen h1b yearly performance data query */ 
select CASE_NUMBER, CASE_STATUS,CASE_SUBMITTED,
cast(EMPLOYMENT_START_DATE as date) as EMPLOYMENT_START_DATE, 
cast(EMPLOYMENT_END_DATE as date) as EMPLOYMENT_END_DATE, 
cast(EMPLOYMENT_END_DATE as date) - cast(EMPLOYMENT_START_DATE as date) as EMPLOYMENT_DURATION_DAYS,  
EMPLOYER_STATE,
t2.region as US_REGION,
JOB_TITLE,
SOC_CODE,
SOC_NAME,
NAICS_CODE,
NEW_EMPLOYMENT,
case when FULL_TIME_POSITION = 'Y' then 1 when FULL_TIME_POSITION = 'N' then 0 end as FULL_TIME_POSITION ,
case when PREVAILING_WAGE = 'N/A' then 0
when PREVAILING_WAGE is null then 0
else cast(REPLACE(REPLACE(PREVAILING_WAGE, '$',''), ',', '') as float) end as PREVAILING_WAGE,
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
where t1.pw_unit_of_pay is null 
limit 10