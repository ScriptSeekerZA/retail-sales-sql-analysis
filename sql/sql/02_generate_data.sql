-- Generate Retail Sales Data

INSERT INTO retail_sales_advanced
SELECT 
    s.store_id,
    s.store_name,
    s.province,
    d::date AS sales_date,

    -- Sales This Year (TY)
    (RANDOM()*20000 + 5000)::INT AS total_sales_ty,

    -- Sales Last Year (LY)
    ((RANDOM()*20000 + 5000) * (0.85 + RANDOM()*0.20))::INT AS total_sales_ly,

    -- Target Sales (slightly higher than TY)
    ((RANDOM()*20000 + 5000) * (1.05 + RANDOM()*0.10))::INT AS target_sales,

    -- Transactions TY
    (RANDOM()*200 + 50)::INT AS transactions_ty,

    -- Transactions LY
    ((RANDOM()*200 + 50) * (0.85 + RANDOM()*0.20))::INT AS transactions_ly

FROM (
    VALUES
    (101,'Durban North','KZN'),
    (102,'Gateway','KZN'),
    (103,'Pavilion','KZN'),
    (104,'Umhlanga','KZN'),
    (105,'PMB Central','KZN'),
    (201,'Sandton','Gauteng'),
    (202,'Rosebank','Gauteng'),
    (203,'Midrand','Gauteng'),
    (301,'Cape Town CBD','Western Cape'),
    (302,'Canal Walk','Western Cape'),
    (303,'Stellenbosch','Western Cape')
) AS s(store_id, store_name, province)

CROSS JOIN generate_series(
    '2024-01-01'::date,
    '2024-01-31'::date,
    '1 day'::interval
) d;
