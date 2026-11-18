-- To use database
USE interview_practice;

-- Section A – Basic SELECT queries
-- =================================
-- 1. Retrieve all columns and records from the sales_data table.
SELECT * FROM sales_data; 

-- 2. Retrieve only customer_name, city, state, and age from the table.
SELECT customer_name FROM sales_data;
SELECT city FROM sales_data;
SELECT state FROM sales_data;
SELECT age FROM sales_data;

-- 3.⁠ ⁠Display all unique product categories available in the table.
SELECT DISTINCT category FROM sales_data;

-- 4.⁠ ⁠Retrieve all orders where the order status is Delivered.
SELECT * FROM sales_data WHERE order_status='Delivered';

-- 5.⁠ ⁠Find all customers whose age is greater than 30.
SELECT * FROM sales_data where age>30;


-- Section B – Filtering and conditions
-- =====================================

-- 6. Retrieve all orders where the product category is Electronics.
SELECT * FROM sales_data WHERE category = 'Electronics';

-- 7. Find all orders where the quantity is greater than or equal to 3.
SELECT * FROM sales_data WHERE quantity >=3;

-- 8. Retrieve all orders where the payment method is UPI.
SELECT * FROM sales_data where payment_method='UPI';

-- 9. Find all customers who belong to Kolkata.
SELECT * FROM sales_data WHERE city = 'Kolkata';

-- 10. Retrieve all orders where the order status is either Cancelled or Returned.
SELECT * FROM sales_data WHERE order_status = 'Cancelled' OR order_status = 'Returned';

-- Section C – Sorting and limiting
-- ================================

-- 11. Display all orders sorted by order_date in descending order.
SELECT * FROM sales_data ORDER BY order_date DESC;

-- 12. Retrieve the 10 most expensive products based on unit_price.
SELECT product_name, unit_price FROM sales_data ORDER BY unit_price desc LIMIT 10;

-- 13. Find the 5 oldest customers based on age.
SELECT customer_name, age FROM sales_data ORDER BY age DESC LIMIT 5;

-- 14. Display all orders sorted by quantity in descending order. If quantities are equal, sort by unit_price in ascending order.
SELECT * FROM sales_data ORDER BY quantity DESC, unit_price ASC;

-- Section D – Operators and pattern matching
-- ==========================================

-- 15. Display the total number of records for each unique combination of age and gender, considering only records where age is between 25 and 40 (inclusive). Sort the results by age in ascending order.
SELECT DISTINCT age, gender, COUNT(*) AS total_count FROM sales_data WHERE age BETWEEN 25 AND 40 GROUP BY gender, age ORDER BY age ASC;

-- 16. Display the payment method, discount percentage, and total number of records for each unique combination of payment method and discount percentage, considering only records where the discount percentage is greater than 10. Group the results by payment method and discount percentage.
SELECT payment_method, discount_percent, COUNT(*) as group_payment_method FROM sales_data WHERE discount_percent > 10 GROUP BY payment_method, discount_percent;

-- 17. Display the customer name, age, state, and total number of records for each unique combination of customer name, age, and state. Consider only customers whose names start with the letter 'S'. Group the results by customer name, age, and state, and sort the output alphabetically by customer name in ascending order.
SELECT customer_name, age, state, COUNT(*) AS total_count FROM sales_data WHERE customer_name LIKE 'S%' GROUP BY customer_name, age, state ORDER BY customer_name ASC;

-- 18. Find all products whose names contain the word Laptop.
SELECT * FROM sales_data WHERE product_name LIKE '%Laptop%';

-- 19. Retrieve all orders where the rating is NULL and order_status is Cancelled.
SELECT * FROM sales_data WHERE rating IS NULL and order_status = 'Cancelled';

-- 20. Find all orders where the payment_method is not NULL.
SELECT * FROM sales_data WHERE payment_method IS NOT NULL;




