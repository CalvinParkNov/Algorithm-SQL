-- Create table If Not Exists orders (order_number int, customer_number int)
-- Truncate table orders
-- insert into orders (order_number, customer_number) values ('1', '1')
-- insert into orders (order_number, customer_number) values ('2', '2')
-- insert into orders (order_number, customer_number) values ('3', '3')
-- insert into orders (order_number, customer_number) values ('4', '3')

-- Write an SQL Query to find the customer_number for the customer
-- who has placed the largest number of orders.
-- The test cases are generated so that exactly one customer
-- will have placed more orders than any other customer.

-- Input: 
-- Orders table:
-- +--------------+-----------------+
-- | order_number | customer_number |
-- +--------------+-----------------+
-- | 1            | 1               |
-- | 2            | 2               |
-- | 3            | 3               |
-- | 4            | 3               |
-- +--------------+-----------------+
-- Output: 
-- +-----------------+
-- | customer_number |
-- +-----------------+
-- | 3               |
-- +-----------------+

-- Follow up: What if more than one customer has the largest number of orders, can you find all the customer_number in this case?
SELECT
    customer_number
FROM
    Orders
    GROUP BY customer_number
    ORDER BY COUNT(*) DESC
    LIMIT 1;
-- Follow up Answer. Simply add number to the limit for how many customers you need.