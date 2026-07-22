/*
/== Date Range Exploration ===================================\
|  Purpose:                                                    |
|    - Determine the temporal boundaries of key data points    |
|    - Understand the range of historical data                 |
|                                                              |
|  SQL Functions Used:                                         |
|    - MIN()                                                   |
|    - MAX()                                                   |
|    - DATEDIFF()                                              |
\==============================================================/
*/

-- Determine the first and last hired person by date and the total duration in days, months and years.
	select
		min(hire_date) AS first_hired,
		max(hire_date) AS last_hired,
		DATEDIFF(YEAR, min(hire_date), max(hire_date)) AS hire_range_years,
		DATEDIFF(MONTH, min(hire_date), max(hire_date)) AS hire_range_months,
		DATEDIFF(DAY, min(hire_date), max(hire_date)) AS hire_range_days
	from employees;
