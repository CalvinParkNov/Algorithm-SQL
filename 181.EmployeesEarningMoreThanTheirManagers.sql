Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int)
Truncate table Employee
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3')
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4')
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', 'None')
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', 'None')

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | salary      | int     |
-- | managerId   | int     |
-- +-------------+---------+
-- id는 Employee Table의 PK이다.

-- 직원이 해당 메니저보다 돈을 더 잘버는 Query를 작성해주세요.

-- 결과: 
-- Employee table:
-- +----+-------+--------+-----------+
-- | id | name  | salary | managerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | Null      |
-- | 4  | Max   | 90000  | Null      |
-- +----+-------+--------+-----------+
-- Output: 
-- +----------+
-- | Employee |
-- +----------+
-- | Joe      |
-- +----------+
-- Joe는 그의 메니저보다 돈을 더 잘 번다.

-- 이문제는 self join을 해서 풀어야 한다.
-- mamangerid = id가 같으므로 
-- Employee a, Employee b로 같은 테이블을 조인을 걸고 id = managerId를 한다.

SELECT
    A.NAME EMPLOYEE
FROM
    EMPLOYEE A,
    EMPLOYEE B
WHERE
    A.MANAGERID = B.ID AND
    A.SALARY > B.SALARY
-- (524 ms)완료