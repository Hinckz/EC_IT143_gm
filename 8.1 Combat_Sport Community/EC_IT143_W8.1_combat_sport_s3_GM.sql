--Q: What is Muhammad Ali's K.O rate?

--A: Let's ask SQL Server and find out....  

SELECT name AS character, ko_rate
FROM dbo.boxing_fighters
WHERE name = 'muhammad ali';