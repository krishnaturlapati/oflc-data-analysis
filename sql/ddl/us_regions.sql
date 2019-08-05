create table us_state_regions
( STATE character varying(100), 
STATE_CODE character varying(100),
REGION character varying(100),
DIVISION character varying(100)
);

COPY us_state_regions (STATE,STATE_CODE,REGION,DIVISION)
FROM 'D:\AppData\oflc\raw_h1b\us_regions.csv' DELIMITER ',' CSV HEADER;