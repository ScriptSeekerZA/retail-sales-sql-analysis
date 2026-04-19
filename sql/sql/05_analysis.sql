
-- RETAIL SALES ANALYSIS


-- 1. Store Performance vs Target
SELECT 
    store_name,
    SUM(total_sales_ty) AS total_sales,
    SUM(target_sales) AS total_target,
    SUM(total_sales_ty) - SUM(target_sales) AS variance
FROM retail_sales_clean_final
GROUP BY store_name
ORDER BY variance DESC;


-- 2. Best Performing Stores (Top 5)
SELECT 
    store_name,
    SUM(total_sales_ty) AS total_sales
FROM retail_sales_clean_final
GROUP BY store_name
ORDER BY total_sales DESC
LIMIT 5;


-- 3. Worst Performing Stores (Bottom 5)
SELECT 
    store_name,
    SUM(total_sales_ty) AS total_sales
FROM retail_sales_clean_final
GROUP BY store_name
ORDER BY total_sales ASC
LIMIT 5;


-- 4. Basket Size (Sales per Transaction)
SELECT 
    store_name,
    SUM(total_sales_ty) / NULLIF(SUM(transactions_ty),0) AS avg_basket_size
FROM retail_sales_clean_final
GROUP BY store_name
ORDER BY avg_basket_size DESC;


-- 5. Province Performance
SELECT 
    province,
    SUM(total_sales_ty) AS total_sales
FROM retail_sales_clean_final
GROUP BY province
ORDER BY total_sales DESC;

-- 6. Basket Size (Sales per Transaction)

SELECT
    store_name,
    SUM(total_sales_ty) / NULLIF(SUM(transactions_ty), 0) AS avg_basket_size
FROM retail_sales_clean_final
GROUP BY store_name
ORDER BY avg_basket_size DESC;
