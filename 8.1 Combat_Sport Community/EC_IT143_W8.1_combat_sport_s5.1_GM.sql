-- Q1: What is Muhammad Ali's KO rate?

-- A1: Let's ask SQL Server and find out.....

SELECT v.character
     , v.ko_rate
	 INTO dbo.t_ali_ko
	 FROM dbo.v_ali_ko_load AS v;