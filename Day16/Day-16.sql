create database customer_db;
use customer_db;

CREATE TABLE customers (
 customer_id INT,
 customer_name VARCHAR(50),
 city VARCHAR(50),
 age INT,
 total_spent DECIMAL(10,2),
 number_of_orders INT
);

INSERT INTO customers VALUES
(1, 'Amit', 'Bangalore', 25, 12000, 5),
(2, 'Neha', 'Mumbai', 30, 45000, 12),
(3, 'Raj', 'Delhi', 22, 8000, 3),
(4, 'Sneha', 'Bangalore', 28, 60000, 15),
(5, 'Karan', 'Mumbai', 35, 20000, 7),
(6, 'Pooja', 'Delhi', 27, 15000, 6),
(7, 'Arjun', 'Bangalore', 40, 70000, 20),
(8, 'Meera', 'Mumbai', 23, 5000, 2);

select * from customers;

select * from customers where city = "Bangalore"

select * from customers where  total_spent > 20000

select * from customers where age between 25 and 35;

select * from customers order by total_spent desc;

select sum(total_spent) as total_revenue from customers;

select avg(total_spent) as average_spending from customers; 

select city, sum(total_spent) as total_spending from customers group by city;

select city, count(*) as customer_count from customers group by city;


SELECT 
 CASE 
 WHEN total_spent < 10000 THEN 'Low'
 WHEN total_spent BETWEEN 10000 AND 50000 THEN 'Medium'
 ELSE 'High'
 END AS customer_segment,
 COUNT(*) AS total_customers
 FROM customers
GROUP BY customer_segment;


select city, sum(total_spent) as total_spending from customers
group by city having sum(total_spent) > 50000;