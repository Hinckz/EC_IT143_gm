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
It demonstrates questions created for "COMBAT SPORT COMMUNITY"...
 
******************************************************************************************************************/

-- Q1: For my gymn business and records, can you give me the fighter(s) who have the highest win-loss ratio, considering only fighters 
--     aged between 25 and 35 years and with a minimum of 15 matches fought? This would act as a case study to infant fighters training 
--     with me.    AUTHOR - Myself
-- A1: To answer the above question, hence the code below:

SELECT name, wins, looses, draws, wins / (wins + looses) AS win_loss_ratio, (wins + looses + draws) AS total_matches_fought
FROM boxing_fighters
WHERE age < 35
AND (wins + looses + draws) >= 15
ORDER BY win_loss_ratio DESC;


--Q2: In the sporting arena we are planing on a tournament capable of providing one on one mentorship from experienced boxers to upcoming 
--    once in our state, to enhance these young talent we would need to focus on fighters with great K.O strength. So could you retrieve
--    the top 3 countries with the highest average K.O. rates among their fighters, considering only fighters with a minimum of 20 
--    matches fought?   AUTHOR - Myself
--A2: To answer the above question, hence the code below:

SELECT TOP (3) [country],
       COUNT(*) AS total_fighters,
       SUM(ko_rate) AS total_kos,
       CAST(SUM(ko_rate) AS DECIMAL(10,2)) / COUNT(*) AS avg_ko_rate
FROM boxing_fighters
WHERE wins + looses + draws >= 20
GROUP BY country
ORDER BY avg_ko_rate DESC;


--Q3: A point was raised in a few meetings ago with the world's sporting committee in conjuction with UFC global and the to recognize 
--    sport hall-of-famers in the country to give motivation to the upcoming or interested youth would be a boost in the coming years.
--    So therefore, Can you provide me a list of fighters who have won at least 80% of their matches, with a minimum of 10 matches fought,
--    and are from countries with an average fighter height above 180 cm?  AUTHOR - Myself
--A3: To answer the above question, hence the code below:

SELECT name, wins, looses, draws, Ko_rate, stance, age, height, reach, country
FROM boxing_fighters
WHERE wins / (wins + looses + draws) >= 0.8
AND wins >= 10
AND country IN (
    SELECT country
    FROM boxing_fighters
    GROUP BY country
    HAVING AVG(height) > 180
);


--Q4: I am researching on the reasons 50% or more of professional boxers and kick boxers tend not to remain in the profession for at 
--    least 20years. This research will be a deciding grade of my final semester report, theefore specifics are needed, so please can 
--    you help find out the average age of fighters who have won at least 75% of their matches?  AUTHOR - Myself
--A4: To answer the above question, hence the code below:

SELECT AVG(age) AS average_age
FROM boxing_fighters
WHERE wins / (wins + looses + draws) >= '75%'
AND  age >= '20';
