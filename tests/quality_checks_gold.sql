-- Forein Key Integrity (Dimensions) 1:03:27
SELECT *
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
ON c.customer_key = s.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = s.product_key
WHERE p.product_key IS NULL

SELECT * FROM gold.dim_customers
