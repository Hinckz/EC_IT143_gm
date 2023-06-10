DROP TABLE IF EXISTS dbo.t_ng_data_quality_analyst1
GO

CREATE TABLE dbo.t_ng_data_quality_analyst1
(employment_type       VARCHAR(25) NOT NULL,
 job_title  VARCHAR(25) NOT NULL,
 salary_in_usd VARCHAR(25) NOT NULL,
 residence VARCHAR(25) NOT NULL,
 company_location VARCHAR(25) NOT NULL
  CONSTRAINT PK_t_ng_data_quality_analyst1 PRIMARY KEY CLUSTERED(job_title, residence ASC)
  );
  GO