Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (id, salary) values ('1', '100')
insert into Employee (id, salary) values ('2', '200')
insert into Employee (id, salary) values ('3', '300')
-- N번째로 높은 연봉을 찾는 쿼리를 완성해라.
-- (난이도가 꽤 있는편다.)
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | salary      | int  |
-- +-------------+------+
-- id는 Employee테이블의 PK이다. 
-- N번째로 높은 연봉을 찾는 쿼리를 완성해라, 만약에 N번째로 높은 연봉이 없으면 NULL로 반환해라.
-- 예:
-- Input: 
-- Employee table:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
-- n = 2
-- Output: 
-- +------------------------+
-- | getNthHighestSalary(2) |
-- +------------------------+
-- | 200                    |
-- +------------------------+

-- Leetcode에서는 OFFSET을 입력해야 오류 없이 돌아간다.
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
-- 쿼리 작성
SET N=N-1; 
  RETURN (
    SELECT
        DISTINCT(SALARY)
    FROM
        EMPLOYEE
        ORDER BY SALARY DESC
        LIMIT 1 OFFSET N
  );
END
-- (353 ms) 완료

-- OFFSET을 제거 하고 , <- 대체 해도 맞는 문법이지만 Leetcode에서는 할때 오류가 생긴다.
-- OFFSET을 제거한 정답

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
-- 쿼리 작성
SET N=N-1; 
  RETURN (
    SELECT
        DISTINCT(SALARY)
    FROM
        EMPLOYEE
        ORDER BY SALARY DESC
        LIMIT 1, N
  );
END