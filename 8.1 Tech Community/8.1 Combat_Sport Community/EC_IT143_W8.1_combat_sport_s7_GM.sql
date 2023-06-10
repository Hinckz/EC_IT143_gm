CREATE PROCEDURE dbo.usp_ali_ko_load
AS

/*****************************************************************************************************************
NAME:    dbo_usp_ali_ko_load
PURPOSE: Muhammed Ali - Load user stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/09/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 7 of 8 in the  Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

  BEGIN

     -- 1) Reload data
	 TRUNCATE TABLE dbo.t_ali_ko;

     INSERT INTO dbo.t_ali_ko
       SELECT v.character
	        , v.ko_rate
		FROM dbo.v_ali_ko_load AS v;

      --2) Review results

      SELECT t.*
        FROM dbo.t_ali_ko AS t;

  END;
GO