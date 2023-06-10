--Q: What is Muhammad Ali's KO rate?

--A: Let's ask SQL Server and find out....

--1) Reload data

TRUNCATE TABLE dbo.t_ali_ko;

INSERT INTO dbo.t_ali_ko
       SELECT v.character
	        , v.ko_rate
		FROM dbo.v_ali_ko_load AS v;

--2) Review results

SELECT t.*
  FROM dbo.t_ali_ko AS t;