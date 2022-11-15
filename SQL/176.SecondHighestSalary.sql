-- 176번째 문제
Create table If Not Exists Employee (id int, salary int)
Truncate table Employee
insert into Employee (id, salary) values ('1', '100')
insert into Employee (id, salary) values ('2', '200')
insert into Employee (id, salary) values ('3', '300')

-- Write an SQL query to report the second highest salary from the Employee table.
--  If there is no second highest salary, the query should report null.

-- 생각보다 쪼~~금 까다로운 문제이다.
-- 맨처음 작성해야 하는것인 MySQL의 MAX를 사용을 해서 최대값을 구해온다.
-- 그다음 비교를 해야한다. 
-- 그래서 먼저 구해야하는 것을 SubQuery 작성한다음 나온 값을 비교를 한다 Greater than or Less than SubQuery의 Result
SELECT 
    MAX(SALARY) SecondHighestSalary
FROM Employee
WHERE SALARY < (
                SELECT 
                    MAX(SALARY)
                FROM 
                    Employee
                )
-- 먼저 SubQuery가 실행이 된다. 그러면 300이라는 값이 출력이되고
-- 그다음으로 main query가 실행이된다. 그러면 300보다 작은 것의 MAX값이 출력이된다. 그럼 두번째로 높은 값이 나온다.
