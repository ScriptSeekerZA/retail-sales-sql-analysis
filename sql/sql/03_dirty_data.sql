-- Create Dirty Version of Retail Data

DROP TABLE IF EXISTS retail_sales_dirty;

CREATE TABLE retail_sales_dirty AS
SELECT
    store_id,

    -- Messy store names (case + spaces)
    CASE
        WHEN RANDOM() < 0.33 THEN UPPER(store_name)
        WHEN RANDOM() < 0.66 THEN LOWER(store_name)
        ELSE store_name || ' '
    END AS store_name,

    province,

    -- Messy date formats (TEXT!)
    CASE
        WHEN RANDOM() < 0.33 THEN TO_CHAR(sales_date, 'YYYY/MM/DD')
        WHEN RANDOM() < 0.66 THEN TO_CHAR(sales_date, 'DD-MM-YYYY')
        ELSE TO_CHAR(sales_date, 'YYYY-MM-DD')
    END AS sales_date,

    total_sales_ty,
    total_sales_ly,
    target_sales,
    transactions_ty,
    transactions_ly

FROM retail_sales_advanced;
