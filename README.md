# Customers & Orders SQL

## 📌 Project Overview

This project contains SQL queries for analyzing customer and order data using MySQL.

The project demonstrates how to use SQL joins, aggregate functions, grouping, filtering, sorting, and limiting results to perform customer-wise order analysis.

## 🗂️ Database Tables

### Customers

The `Customers` table contains:

- `customer_id`
- `customer_name`
- `city`

### Orders

The `Orders` table contains:

- `order_id`
- `customer_id`
- `amount`
- `order_date`

The `customer_id` column connects the `Customers` and `Orders` tables.

## 📝 SQL Concepts Covered

- SELECT
- JOIN
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

## 🔍 Queries Included

The project includes SQL queries to:

1. Find the total order amount for each customer.
2. Find customers who have placed more than 3 orders.
3. Find the average order amount for each customer.
4. Find the highest order amount placed by each customer.
5. Display customers sorted by total purchase amount.
6. Find customers whose total purchase amount exceeds 10,000.
7. Display customer names with the total number of orders.
8. Find the customer who spent the highest amount.
9. Find the customer who placed the maximum number of orders.
10. Find customers whose average order amount is greater than 2,000.
11. Display the top 5 customers based on total purchase amount.
12. Find the minimum order amount for each customer.
13. Find customers whose total purchase amount exceeds 5,000.
14. Display customer-wise total orders and total purchase amount.
15. Find customers who placed more than 2 orders and spent more than 8,000.

## 🛠️ Technologies Used

- MySQL
- SQL
- Git
- GitHub

## 📂 Project Structure

```text
CustomersOrders
│
├── CustomersOrders.sql
└── README.md
