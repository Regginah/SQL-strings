-- String Functions
-- LENGTH

SELECT first_name, LENGTH (first_name)
FROM employee_demographics
ORDER BY 2;

-- UPPER & LOWER
SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT first_name, LOWER(first_name)
FROM employee_demographics;

-- TRIM, LTRIM, RTRIM

SELECT TRIM("     hola    ");

SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
birth_date,
SUBSTRING(birth_date,6,2) AS "birth month"
FROM employee_demographics;

-- REPLACE
-- replace specific characters with a different ch that you want

SELECT first_name, REPLACE(first_name, "A","zz")
FROM employee_demographics;

-- LOCATE
SELECT LOCATE("X","ALEXANDER");

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCAT
-- join 1 column out of 2 or more.

SELECT first_name, last_name,
CONCAT(first_name, " ", last_name)
FROM employee_demographics;

SELECT last_name, birth_date,
CONCAT(last_name, " ",birth_date),
SUBSTRING(birth_date,6,2) AS "birth month"
FROM employee_demographics;

-- CASE STATMENTS
SELECT first_name, last_name, age,
CASE
	WHEN age < 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age > 50 THEN 'Super Old'
END AS Age_Bracket
FROM employee_demographics;
    
SELECT *
FROM employee_salary;

-- CASE STM Pay Increase and Bonus
-- < 50000 = 5 %
-- > 50000 = 7 %
-- Bonus 10 % Finance Dptm

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS 'New Salary',
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;