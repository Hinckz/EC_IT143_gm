--Q: How much in USD does a data quality analyst in Nigeria earn?

--A: Let's ask SQL Server and find out....

--1) Reload data

TRUNCATE TABLE dbo.t_ng_data_quality_analyst1;

INSERT INTO dbo.t_ng_data_quality_analyst1
       SELECT v.employment_type
	        , v.job_title
			, v.salary_in_usd
			, v.residence
			, v.company_location
		FROM dbo.v_ng_data_quality_analyst AS v;

--2) Review results

SELECT t.*
  FROM dbo.t_ng_data_quality_analyst1 AS t;