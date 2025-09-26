-- 1. Count total customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 2. Count orders per customer
SELECT c.first_name || ' ' || c.last_name AS customer, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 3. Total sales (revenue)
SELECT SUM(oi.quantity * p.price) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id;

-- 4. Average order value
SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT o.order_id, SUM(oi.quantity * p.price) AS order_total
    FROM Orders o
    JOIN OrderItems oi ON o.order_id = oi.order_id
    JOIN Products p ON oi.product_id = p.product_id
    GROUP BY o.order_id
);

-- 5. Revenue by category
SELECT p.category, SUM(oi.quantity * p.price) AS category_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.category;

-- 6. Customers who spent more than $1500
SELECT c.first_name || ' ' || c.last_name AS customer, SUM(oi.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_id
HAVING total_spent > 1500;
