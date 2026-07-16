/*
/== Database Exploration =====================================\
|  Purpose:                                                    |
|    - Explore the structure of the database                   |
|    - List tables and their schemas                           |
|    - Inspect columns and metadata for selected tables        |
|                                                              |
|  Tables Queried:                                             |
|    - INFORMATION_SCHEMA.TABLES                               |
|    - INFORMATION_SCHEMA.COLUMNS                              |
\==============================================================/
*/


-- Retrieve a list of all tables in the database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Retrieve all columns for a specific table (dim_customers)
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
