DROP VIEW IF EXISTS dbo.v_ng_data_quality_analyst;
GO

CREATE VIEW dbo.v_ng_data_quality_analyst
AS

/*****************************************************************************************************************
NAME:    dbo_v_ng_data_quality_analyst
PURPOSE: create the Nigeria data quality analyst - view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/09/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 4 of 8 in the  Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

--Q: How much in USD does a data quality analyst in Nigeria earn?

-- A1: Let's ask SQL Server and find out.....

SELECT employment_type, job_title, salary_in_usd, employee_residence AS residence, company_location
FROM dbo.computerscience_salaries
WHERE job_title = 'Data Quality Analyst' AND employee_residence = 'NG';