-- USING NESTED SORTING
USE salesdb;

SELECT *
FROM employees
ORDER BY 
salary ASC,
birthdate DESC;

-- USING GROUP BY

SELECT department, AVG(salary)
FROM employees
GROUP BY department;

-- Find total score and total number of customer from each country

SELECT country, SUM(score)
FROM customers
GROUP BY COUNTRY;

--

SELECT
customerid,
lastname

FROM customers;

--
SELECT*
FROM customers
WHERE country = "Germany";

--

