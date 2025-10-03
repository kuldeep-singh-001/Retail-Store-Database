-- **  All Tables  **--
select * from Customers;
select * from Products;
select * from Orders;
select * from OrderItems;



-- 1. Count total customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 2. Customers grouped by city
SELECT city, COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

-- 3. Count total products
SELECT COUNT(*) AS total_products
FROM Products;

-- 4. Average price per product category
SELECT category, AVG(price) AS avg_price
FROM Products
GROUP BY category;

-- 5. Most expensive product in each category
SELECT category, MAX(price) AS max_price
FROM Products
GROUP BY category;

-- 6. Count total orders
SELECT COUNT(*) AS total_orders
FROM Orders;

-- 7. Orders per day
SELECT order_date, COUNT(*) AS total_orders
FROM Orders
GROUP BY order_date;

-- 8. Customers who have more than 1 order (using HAVING)
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- 9. Count of order items per order
SELECT order_id, COUNT(order_item_id) AS total_items
FROM OrderItems
GROUP BY order_id;

-- 10. Orders where more than 2 different products were bought
SELECT order_id, COUNT(product_id) AS distinct_products
FROM OrderItems
GROUP BY order_id
HAVING COUNT(product_id) > 2;

