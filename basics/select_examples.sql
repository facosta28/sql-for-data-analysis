-- Basic SELECT examples

-- Select all columns from a table
SELECT *
FROM customers;

-- Select specific columns
SELECT
    customer_id,
    customer_name,
    country
FROM customers;

-- Filter records by country
SELECT
    customer_id,
    customer_name,
    country
FROM customers
WHERE country = 'Costa Rica';

-- Sort customers by total sales
SELECT
    customer_id,
    customer_name,
    total_sales
FROM customers
ORDER BY total_sales DESC;
