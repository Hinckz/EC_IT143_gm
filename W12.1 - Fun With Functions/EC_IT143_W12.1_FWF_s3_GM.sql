-- Q: How to extract first name from Contact Name?

-- A: Alright, below will show the problem step by step;
-- CustomerName = Alejandra Camino -> Alejandra

SELECT t.ContactName
  FROM dbo.t_w3_schools_customers AS t
  ORDER BY 1;