create materialized view h1b_yearly_performance_model
as 
select employment_duration_years, us_region, annual_salary_band,naics_code_2,yyyy, case_status 
from h1b_yearly_performance_reporting 
where employment_duration_years between 0 AND 4
and naics_code_2 in ('11','21','22','23','31','32','42','43','44','45','48','49','51','52','53','54','55','56','61','62','71','72','81')
