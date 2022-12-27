Create table If Not Exists Department (id int, revenue int, month varchar(5))
Truncate table Department
insert into Department (id, revenue, month) values ('1', '8000', 'Jan')
insert into Department (id, revenue, month) values ('2', '9000', 'Jan')
insert into Department (id, revenue, month) values ('3', '10000', 'Feb')
insert into Department (id, revenue, month) values ('1', '7000', 'Feb')
insert into Department (id, revenue, month) values ('1', '6000', 'Mar')
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | revenue     | int     |
-- | month       | varchar |
-- +-------------+---------+
-- (id, month) is the primary key of this table.
-- The table has information about the revenue of each department per month.
-- The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].

-- Wrrite ans SQL Query to reformat the table usch that there is a department id column and a revenue column for each month
-- Return the result table in any order.
-- The query result format is in the follwing example.

-- Example 1:

-- Input: 
-- Department table:
-- +------+---------+-------+
-- | id   | revenue | month |
-- +------+---------+-------+
-- | 1    | 8000    | Jan   |
-- | 2    | 9000    | Jan   |
-- | 3    | 10000   | Feb   |
-- | 1    | 7000    | Feb   |
-- | 1    | 6000    | Mar   |
-- +------+---------+-------+
-- Output: 
-- +------+-------------+-------------+-------------+-----+-------------+
-- | id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
-- +------+-------------+-------------+-------------+-----+-------------+
-- | 1    | 8000        | 7000        | 6000        | ... | null        |
-- | 2    | 9000        | null        | null        | ... | null        |
-- | 3    | null        | 10000       | null        | ... | null        |
-- +------+-------------+-------------+-------------+-----+-------------+
-- Explanation: The revenue from Apr to Dec is null.
-- Note that the result table has 13 columns (1 for the department id + 12 for the months).

SELECT
    ID,
    SUM(IF(month = 'Jan', revenue, NULL)) Jan_Revenue,
    SUM(IF(month = 'Feb', revenue, NULL)) Feb_Revenue,
    SUM(IF(month = 'Mar', revenue, NULL)) Mar_Revenue ,
    SUM(IF(month = 'Apr', revenue, NULL)) Apr_Revenue,
    SUM(IF(month = 'May', revenue, NULL)) May_Revenue ,
    SUM(IF(month = 'Jun', revenue, NULL)) Jun_Revenue ,
    SUM(IF(month = 'Jul', revenue, NULL)) Jul_Revenue ,
    SUM(IF(month = 'Aug', revenue, NULL)) Aug_Revenue,
    SUM(IF(month = 'Sep', revenue, NULL)) Sep_Revenue ,
    SUM(IF(month = 'Oct', revenue, NULL)) Oct_Revenue ,
    SUM(IF(month = 'Nov', revenue, NULL)) Nov_Revenue ,
    SUM(IF(month = 'Dec', revenue, NULL)) Dec_Revenue 
FROM
    Department
    GROUP BY ID
