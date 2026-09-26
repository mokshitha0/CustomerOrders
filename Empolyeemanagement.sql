
-- CUSTOMERS & ORDERS
-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);



-- INSERT CUSTOMER DATA

INSERT INTO Customers (customer_id, customer_name, city)
VALUES
(1, 'Arun', 'Bangalore'),
(2, 'Priya', 'Chennai'),
(3, 'Rahul', 'Hyderabad'),
(4, 'Akshaya', 'Mysore'),
(5, 'Bala', 'Bangalore'),
(6, 'Ananya', 'Chennai');
-- INSERT ORDER DATA


INSERT INTO Orders (order_id, customer_id, amount, order_date)
VALUES
(101, 1, 2500.00, '2026-09-01'),
(102, 1, 3500.00, '2026-09-05'),
(103, 1, 2000.00, '2026-09-10'),
(104, 1, 1500.00, '2026-09-15'),
(105, 2, 5000.00, '2026-09-02'),
(106, 2, 2500.00, '2026-09-06'),
(107, 2, 3000.00, '2026-09-12'),
(108, 3, 4500.00, '2026-09-03'),
(109, 3, 3500.00, '2026-09-08'),
(110, 4, 3000.00, '2026-09-04'),

(111, 5, 6000.00, '2026-09-05'),
(112, 5, 3500.00, '2026-09-11'),
(113, 5, 2000.00, '2026-09-16'),
(114, 5, 1500.00, '2026-09-20'),

(115, 6, 7000.00, '2026-09-07'),
(116, 6, 4000.00, '2026-09-14');
-- QUESTION 16
-- Total order amount for each customer
SELECT c.customer_name,
       SUM(o.amount) AS total_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
-- QUESTION 17
-- Customers who placed more than 3 orders

SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 3;
-- QUESTION 18
-- Average order amount for each customer
SELECT c.customer_name,
       AVG(o.amount) AS average_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
-- QUESTION 19
-- Highest order amount placed by each customer
SELECT c.customer_name,
       MAX(o.amount) AS highest_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
-- QUESTION 20
-- Customers sorted by total purchase amount
SELECT c.customer_name,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_purchase DESC;
-- QUESTION 21
-- Customers whose total purchase exceeds 10000
SELECT c.customer_name,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.amount) > 10000;
-- QUESTION 22
-- Customer names and total number of orders
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
-- QUESTION 23
-- Customer who spent the highest amount

SELECT c.customer_name,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_purchase DESC
LIMIT 1;
-- QUESTION 24
-- Customer who placed maximum number of orders
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC
LIMIT 1;



-- QUESTION 25
-- Customers whose average order is greater than 2000


SELECT c.customer_name,
       AVG(o.amount) AS average_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING AVG(o.amount) > 2000;



-- QUESTION 26
-- Top 5 customers based on total purchase


SELECT c.customer_name,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_purchase DESC
LIMIT 5;
-- QUESTION 27
-- Minimum order amount for each customer

SELECT c.customer_name,
       MIN(o.amount) AS minimum_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- ============================================
-- QUESTION 28
-- Customers whose total orders exceed 5000

SELECT c.customer_name,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.amount) > 5000;

-- QUESTION 29
-- Customer-wise total orders and total purchase

SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
-- QUESTION 30
-- More than 2 orders AND spent more than 8000

SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders,
       SUM(o.amount) AS total_purchase
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 2
   AND SUM(o.amount) > 8000;  
   