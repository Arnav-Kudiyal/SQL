-- Write a query to display the firstname and country of all customers.
 USE salesdb;
 
 SELECT 
	country,
    firstname
FROM customers;

-- Write a query to display firstname and lastname of customers who are from 'India'.

SELECT 
	firstname,
    lastname
FROM customers
WHERE country = 'India';

-- Write a query to display all distinct countries from the customers table.

SELECT DISTINCT country
FROM customers;

-- Write a query to display firstname, lastname, and score of all customers,sorted by score in descending order (highest score first).

SELECT 
	firstname,
    lastname,
    score
FROM customers
ORDER BY score DESC;

-- Write a query to display firstname, country, and score of customers from 'USA', sorted by score in descending order.

SELECT 
	firstname,
    country,
    score
FROM customers
WHERE country = "Germany"
ORDER BY score DESC;

-- Write a query to display the top 3 customers with the highest score.

SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3;

-- Write a query to display each country and the number of customers from that country.

SELECT 
	country,
    COUNT(country) AS customer_countries
FROM customers
GROUP BY country;

-- 👉 Write a query to display country and number of customers,but only include customers whose score is greater than 500.

SELECT 
	country,
    COUNT(country) AS customer_countries
FROM customers
WHERE score > 500
GROUP BY country;

--  Write a query to display country and number of customers,but only show countries that have MORE THAN 2 customers.

SELECT
	country,
    COUNT(country) AS customer_countries
FROM customers
GROUP BY country
HAVING customer_countries > 2;

-- Display country and number of customers, show only countries with more than 1 customer, and sort the result by number of customers in descending order.

SELECT 
	country,
    COUNT(country) AS number_of_customers
FROM customers
GROUP BY country
HAVING COUNT(country) > 1
ORDER BY numer_of_customers DESC;

-- List all unique countries where our customers are located. Ensure  no country nasme is repeated.
USE salesdb;

SELECT 
	country,
    COUNT(country) AS customer_country
FROM customers
GROUP BY country;

-- Find the names and salaries of the Top-3 highest paid employees.

SELECT
	firstname,
    lastname,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Find the total number of customers of each country, but only count customers who have score 500 or more.

SELECT
	country,
    COUNT(country) AS customer_countries
FROM customers
WHERE score >= 500
GROUP BY country;


-- Find the total salary budget for each department, but only show department where the budget exceeds 100,000.

SELECT 
	department,
    SUM(salary) AS Total_budget
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- For each country (excluding  India), find the average customer score. Onlt returns the top country with an average score higher than 300.

SELECT 
	country,
    AVG(score) AS avg_score
FROM customers
WHERE country != 'India'
GROUP BY country
HAVING AVG(score) > 300
ORDER BY avg_score DESC
LIMIT 1;