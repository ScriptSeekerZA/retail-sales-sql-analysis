-- Retail Sales Table Creation

DROP TABLE IF EXISTS retail_sales_advanced;

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
