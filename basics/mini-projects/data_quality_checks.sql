-- Data Quality Checks Mini Project

-- Find records with missing customer names
SELECT *
FROM customers
WHERE customer_name IS NULL;

-- Find duplicate customer IDs
SELECT
    customer_id,
    COUNT(*) AS record_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Find opportunities without close date
SELECT *
FROM opportunities
WHERE close_date IS NULL;

-- Classify opportunities by amount
SELECT
    opportunity_id,
    opportunity_name,
    amount,
    CASE
        WHEN amount >= 100000 THEN 'High value'
        WHEN amount >= 50000 THEN 'Medium value'
        ELSE 'Low value'
    END AS opportunity_segment
FROM opportunities;
