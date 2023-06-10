CREATE PROCEDURE dbo.usp_ng_data_quality_analyst
AS

/*****************************************************************************************************************
NAME:    dbo_usp_ng_data_quality_analyst
PURPOSE: Data Quality Analyst - Salary in Nigeria - user stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/10/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 7 of 8 in the  Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

  BEGIN

     -- 1) Reload data
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

  END;
GO