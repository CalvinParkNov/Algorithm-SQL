Create table If Not Exists Salary (id int, name varchar(100), sex char(1), salary int)
Truncate table Salary
insert into Salary (id, name, sex, salary) values ('1', 'A', 'm', '2500')
insert into Salary (id, name, sex, salary) values ('2', 'B', 'f', '1500')
insert into Salary (id, name, sex, salary) values ('3', 'C', 'm', '5500')
insert into Salary (id, name, sex, salary) values ('4', 'D', 'f', '500')
-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | id          | int      |
-- | name        | varchar  |
-- | sex         | ENUM     |
-- | salary      | int      |
-- +-------------+----------+
-- id is the primary key for this table.
-- The sex column is ENUM value of type ('m', 'f').
-- The table contains information about an employee.
-- Write an SQL query to swap all 'f' and 'm' values(i.i, change all 'f' values to 'm' nd vice vera)
-- with a single update statement and no intermdeidate temporary tables.
-- Note that you must write a single update statement, do not write any select statement for this problem
-- the query result format is in the following example.

-- Input: 
-- Salary table:
-- +----+------+-----+--------+
-- | id | name | sex | salary |
-- +----+------+-----+--------+
-- | 1  | A    | m   | 2500   |
-- | 2  | B    | f   | 1500   |
-- | 3  | C    | m   | 5500   |
-- | 4  | D    | f   | 500    |
-- +----+------+-----+--------+
-- Output: 
-- +----+------+-----+--------+
-- | id | name | sex | salary |
-- +----+------+-----+--------+
-- | 1  | A    | f   | 2500   |
-- | 2  | B    | m   | 1500   |
-- | 3  | C    | f   | 5500   |
-- | 4  | D    | m   | 500    |
-- +----+------+-----+--------+
-- Explanation: 
-- (1, A) and (3, C) were changed from 'm' to 'f'.
-- (2, B) and (4, D) were changed from 'f' to 'm'.
-- Write ans SQL query to swap all 'f' and 'm' values(i.e., chane all 'f' values to 'm' and vice versa)
-- with a single update statement and no intermediate temporary tables.
-- Note that you must write a single update statement, do not write any select statement for this problem.
-- The query result format is in the following example

-- query 문 쓰지 말고 'f' -> 'm' 으로 'm' -> 'f'로 update statement 해라
UPDATE Salary 
SET
`SEX` = CASE SEX 
            WHEN 'F'
            THEN 'M'
            WHEN 'M'
            THEN 'F'
        END;
 