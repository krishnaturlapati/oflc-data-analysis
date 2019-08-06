CREATE TABLE public.h1b_yearly_performance_reporting
(
    case_number character varying(2000) ,
    case_status integer,
    case_submitted date,
    employment_start_date character varying(2000) ,
    employment_end_date character varying(2000) ,
    employment_duration_years integer,
    employer_state character varying(2000) ,
    us_region character varying(100) ,
    job_title character varying(2000) ,
    soc_code character varying ,
    soc_name character varying ,
    naics_code character varying ,
    full_time_position integer,
    prevailing_wage double precision,
    pw_unit_of_pay character varying(2000) ,
    annual_salary double precision,
    annual_salary_band text ,
    pw_wage_level character varying ,
    naics_code_2 text ,
    yyyy integer
)