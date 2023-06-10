--Q: How much in USD does a data quality analyst in Nigeria earn?

--A: Let's ask SQL Server and find out....  

SELECT employment_type, job_title, salary_in_usd, employee_residence AS residence, company_location
FROM dbo.computerscience_salaries
WHERE job_title = 'Data Quality Analyst' AND employee_residence = 'NG';