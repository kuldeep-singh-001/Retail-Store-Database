-- Customers
INSERT INTO Customers (first_name, last_name, email, phone, city) VALUES
('Alice', 'Johnson', 'alice@example.com', '555-1111', 'New York'),
('Bob', 'Smith', 'bob@example.com', '555-2222', 'Chicago'),
('Carol', 'Lee', 'carol@example.com', '555-3333', 'Los Angeles'),
('David', 'Brown', 'david@example.com', '555-4444', 'New York');

-- Products
INSERT INTO Products (product_name, category, price) VALUES
('Laptop', 'Electronics', 1200),
('Phone', 'Electronics', 800),
('Headphones', 'Electronics', 150),
('Chair', 'Furniture', 200),
('Desk', 'Furniture', 400),
('Notebook', 'Stationery', 5);

-- Orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2023-07-01'),
(2, '2023-07-02'),
(3, '2023-07-02'),
(1, '2023-07-05'),
(4, '2023-07-06');

-- Order Items
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1),  
(1, 3, 2),  
(2, 2, 1),  
(2, 6, 10), 
(3, 4, 2), 
(4, 1, 1),  
(4, 5, 1),  
(5, 2, 2);  
