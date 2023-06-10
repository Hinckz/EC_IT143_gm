DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/*****************************************************************************************************************
NAME:    dbo_v_hello_world_load
PURPOSE: reate the Hello World - Load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/09/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 4 of 8 in the  Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

-- Q1: What is the current date and time?
-- A1: Let's ask SQL Server and find out.....

SELECT 'Hello World' AS my_message
      , GETDATE() AS current_date_time;