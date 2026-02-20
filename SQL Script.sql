INSERT INTO online_sales VALUES
(1, '2024-01-05', 500, 101),
(2, '2024-01-15', 700, 102),
(3, '2024-02-10', 300, 103),
(4, '2024-02-18', 900, 104),
(5, '2024-03-12', 1200, 105),
(6, '2024-03-25', 400, 101),
(7, '2024-03-28', 800, 102);

select * from online_sales;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;

SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
WHERE YEAR(order_date) = 2024
GROUP BY month
ORDER BY month;
