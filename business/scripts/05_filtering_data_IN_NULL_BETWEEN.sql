/*
/== IN, NOT IN, IS NULL, BETWEEN =============================\
|  Purpose:                                                    |
|    - Filter values from lists or exclude them                |
|    - Check for missing data                                 |
|    - Select ranges using BETWEEN                             |
|                                                              |
|  SQL Concepts Used:                                          |
|    - IN / NOT IN                                             |
|    - IS NULL / NOT NULL                                      |
|    - BETWEEN                                                 |
\==============================================================/
*/

-- IN, NOT IN, IS NULL, BETWEEN

-- Select all rows from the suppliers table where the supplier is Cool Beans
SELECT *
FROM suppliers
WHERE supplier_name = 'Cool Beans';

-- Select all rows from the suppliers table where the supplier is NOT Beans and Barley
SELECT *
FROM suppliers
WHERE NOT supplier_name = 'Beans and Barley';

-- Select all Robusta and Arabica coffee types
SELECT *
FROM suppliers
WHERE coffee_type IN ('Robusta', 'Arabica');

SELECT *
FROM suppliers
WHERE
	coffee_type = 'Robusta'
	OR coffee_type = 'Arabica';

-- Select all coffee types that are not Robusta or Arabica
SELECT *
FROM suppliers
WHERE coffee_type NOT IN ('Robusta', 'Arabica');

-- Select all employees with missing email addresses
SELECT *
FROM employees
WHERE email IS NULL;

-- Select all employees whose emails are not missing
SELECT *
FROM employees
WHERE NOT email IS NULL;

-- Select all employees who make between 35k and 50k
SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM employees
WHERE salary BETWEEN 35000 AND 50000;

SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM employees
WHERE
	salary >= 35000
	AND salary <= 50000;
