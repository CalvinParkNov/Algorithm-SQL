Create table If Not Exists Customers (id int, name varchar(255))
Create table If Not Exists Orders (id int, customerId int)
Truncate table Customers
insert into Customers (id, name) values ('1', 'Joe')
insert into Customers (id, name) values ('2', 'Henry')
insert into Customers (id, name) values ('3', 'Sam')
insert into Customers (id, name) values ('4', 'Max')
Truncate table Orders
insert into Orders (id, customerId) values ('1', '3')
insert into Orders (id, customerId) values ('2', '1')

-- 주문을 하지 않은 사람들을 출력하는 쿼리를 완성을 해야한다.
-- Orders Table에는 CustomerID를 Customers Table의 id를 참조하고 있다.
-- 생각해보니깐 이 문제는 2가지 방법으로 풀 수 있다고 생각한다.
-- 1. NOT IN을 사용 (905 ms)
-- 2. Left Join사용 (478 ms)

-- 1.NOT IN (서브쿼리를 먼저실행하고 실행 값에서 없는 부분을 찾아서 주는 쿼리문. 가장 많은 시간을 사용한다.)
SELECT
    NAME CUSTOMERS
FROM    CUSTOMERS
WHERE ID NOT IN(
                SELECT
                    CUSTOMERID
                FROM
                    ORDERS
                )

-- 2. Left Join (CUSTOMER TABLE을 기준으로 Join을 하고 WHERE절에서 CUSTOMERID가 NULL인 값을 출력 )
SELECT
    C.NAME CUSTOMERS
FROM
    CUSTOMERS C LEFT JOIN ORDERS O
    ON C.ID = O.CUSTOMERID
WHERE
    O.CUSTOMERID IS NULL

-- NOT IN보다는 LEFT JOIN을 사용하는게 더 좋은 방법인거 같다.
-- 첫번째 방법은 서브쿼리를 실행 후 그 결과값을 가지고 메인 쿼리가 실행 되다 보니 만약에 데이터가 많을 경우 많은 시간을 사용한다.
-- 그러므로 LEFT JOIN을 사용하는것을 추천!