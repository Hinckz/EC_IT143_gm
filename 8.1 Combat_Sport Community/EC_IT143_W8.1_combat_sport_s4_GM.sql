DROP VIEW IF EXISTS dbo.v_ali_ko_load;
GO

CREATE VIEW dbo.v_ali_ko_load
AS

/*****************************************************************************************************************
NAME:    dbo_v_ali_ko_load
PURPOSE: create the Ali ko - Load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/09/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 4 of 8 in the  Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

-- Q1: What is Muhammad Ali's K.O rate?
-- A1: Let's ask SQL Server and find out.....

SELECT name AS character, ko_rate
FROM dbo.boxing_fighters
WHERE name = 'muhammad ali';