/*****************************************************************************************************************
NAME:    My Community analysis, creating SQL Script
PURPOSE: Finding answers to questions created in assignment 8.2 (My Community data)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/16/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script is built for demonstration on writing succesfull SQL scripts as answers to my previous questions.
It demonstrates questions created for "TECH COMMUNITY"...
 
******************************************************************************************************************/

-- Q1: I am interested in tech and was wanting to get into a new career. What I am wanting to get information on is the Salary 
--     in USD and the overall amount of work done remotely.?  AUTHOR - Matt Hale
-- A1: To answer the above question, hence the code below:

SELECT work_year, 
    experience_level, 
    employment_type, 
    job_title, 
    salary, 
    salary_currency,  
    remote_ratio, 
    company_location, 
    company_size
FROM dbo.computerscience_salaries
WHERE remote_ratio > '0' AND salary_currency = 'USD'
ORDER BY salary_in_usd DESC;

--Q2: With the data available in the tech_salries table, please check for the average salary for a software engineer with 5 years
--    of experience working in a full-time position at a tech company in the United States region?  AUTHOR - Myself
--A2: To answer the above question, hence the code below:

SELECT AVG(salary_in_usd) AS average_salary
FROM computerscience_salaries
WHERE work_year = 5
AND experience_level > 'SE'
AND employment_type = 'FT'
AND company_location = 'US';


--Q3: In Seattle, the cost of living has increased substantially in the pas six months and is now compared to that of san Francisco.
--    As a result some employees have protested silently for a raise in their pay. For study sake, and help for decision making, 
--    please provide me with the difference in the average salary between tech employees who work in the San Francisco Bay Area and 
--    tech employees who work in Seattle?  AUTHOR - Myself
--A3: To answer the above question, hence the code below:

SELECT AVG(salary_in_usd) AS average_salary, company_location
FROM computerscience_salaries
WHERE company_location IN ('San Francisco Bay Area', 'Seattle')
GROUP BY company_location
ORDER BY average_salary DESC;


--Q4: In recent times, the company has brought in a valuable number of employees working both remotely and some hybrid. In preparation 
--    for a company wide audit and future employments, can use this information to provide me with the highest salary a remote Applied 
--    Scientist employee earns?   AUTHOR - Myself
--A4: To answer the above question, hence the code below:

SELECT salary, job_title, remote_ratio
FROM computerscience_salaries
WHERE remote_ratio > '0'
AND job_title LIKE '%Applied Scientist%'
ORDER BY salary DESC;

