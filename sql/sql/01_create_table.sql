
-- Retail Sales Table Creation Script
-- Purpose:
-- Create base table structure for retail sales dataset



-- 1. DROP TABLE (SAFE RESET)

-- Ensures script can be rerun without errors

DROP TABLE IF EXISTS retail_sales_advanced;


-- 2. CREATE TABLE


CREATE TABLE retail_sales_advanced (
    store_id INT,
    store_name TEXT,
    province TEXT,
    sales_date DATE,

    total_sales_ty INT,
    total_sales_ly INT,
    target_sales INT,

    transactions_ty INT,
    transactions_ly INT
);



-- 3. VALIDATION


-- Check structure
SELECT *
FROM retail_sales_advanced
LIMIT 10;
