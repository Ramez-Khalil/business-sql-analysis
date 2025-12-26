-- Business Question 1:
-- What is the total revenue generated from completed orders?

SELECT
  SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed';


-- Business Question 2:
-- How much revenue does each product generate?

SELECT
  p.product_name,
  SUM(oi.quantity * oi.unit_price) AS product_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY product_revenue DESC;


-- Business Question 3:
-- Which customers have placed orders, and how many?

SELECT
  c.full_name,
  COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.full_name
ORDER BY total_orders DESC;


-- Business Question 4:
-- What percentage of orders were returned?

SELECT
  ROUND(
    SUM(CASE WHEN status = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS return_rate_percentage
FROM orders;
