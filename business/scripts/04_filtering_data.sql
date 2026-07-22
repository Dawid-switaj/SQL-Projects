/*
/== WHERE, AND & OR ===========================================\
|  Purpose:                                                    |
|    - Filter rows using conditional logic                     |
|    - Combine conditions with AND / OR                        |
|                                                              |
|  SQL Concepts Used:                                          |
|    - WHERE                                                   |
|    - AND                                                     |
|    - OR                                                      |
\==============================================================/
*/

-- Select only the employees who make more than 50k
SELECT *
FROM employees
WHERE salary > 50000;

-- Select only the employees who work in Early Rise coffeshop
SELECT *
FROM employees
WHERE coffeeshop_id = 2;

-- Select all the employees who work in Ancient Bean and make more than 45k
SELECT *
FROM employees
WHERE salary > 45000 AND coffeeshop_id = 3;

-- Select all the employees who work in Common Grounds or make more than 50k
SELECT *
FROM employees
WHERE salary > 50000 OR coffeeshop_id = 1;

-- Select all the employees who work in Common Grounds, make more than 300k and are male
SELECT *
FROM employees
WHERE
    salary > 30000
    AND coffeeshop_id = 1
    AND gender = 'M';

-- Select all the employees who work in Early Rise or make more than 50k or are female
SELECT *
FROM employees
WHERE
    salary > 50000
    OR coffeeshop_id = 2
    OR gender = 'F';
