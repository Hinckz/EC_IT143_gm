-- Q1: How much in USD does a data quality analyst in Nigeria earn?

-- A1: Let's ask SQL Server and find out.....

SELECT v.employment_type
     , v.job_title
	 , v.salary_in_usd
	 , v.residence
	 , v.company_location
	 INTO dbo.t_ng_data_quality_analyst1
	 FROM dbo.v_ng_data_quality_analyst AS v;