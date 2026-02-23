-- Total Revenue
SELECT SUM(sales) AS total_revenue
FROM orders;

-- Region Wise Revenue
SELECT region, SUM(sales) AS revenue
FROM orders
GROUP BY region
ORDER BY revenue DESC;

-- Top 5 Customers
SELECT customer_id, SUM(sales) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;
