
-- RETAIL SALES DATA CLEANING


-- 1. STANDARDIZE STORE NAMES
-- Fix casing + remove trailing spaces

UPDATE retail_sales_dirty
SET store_name = INITCAP(TRIM(store_name));


-- 2. ADD CLEAN DATE COLUMN

ALTER TABLE retail_sales_dirty
ADD COLUMN clean_date DATE;


-- 3. CONVERT DATE FORMATS

-- Format: YYYY/MM/DD
UPDATE retail_sales_dirty
SET clean_date = TO_DATE(sales_date, 'YYYY/MM/DD')
WHERE sales_date LIKE '%/%';


-- Format: DD-MM-YYYY
UPDATE retail_sales_dirty
SET clean_date = TO_DATE(sales_date, 'DD-MM-YYYY')
WHERE sales_date LIKE '__-__-____';


-- Format: YYYY-MM-DD
UPDATE retail_sales_dirty
SET clean_date = TO_DATE(sales_date, 'YYYY-MM-DD')
WHERE sales_date LIKE '____-__-__';


-- 4. CREATE FINAL CLEAN TABLE

DROP TABLE IF EXISTS retail_sales_clean_final;

CREATE TABLE retail_sales_clean_final AS
SELECT
    store_id,
    store_name,
    province,
    clean_date AS sales_date,
    total_sales_ty,
    total_sales_ly,
    target_sales,
    transactions_ty,
    transactions_ly
FROM retail_sales_dirty
WHERE clean_date IS NOT NULL;
