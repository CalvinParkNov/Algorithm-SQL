Create table If Not Exists Customer (id int, name varchar(25), referee_id int)
Truncate table Customer
insert into Customer (id, name, referee_id) values ('1', 'Will', NULL)
insert into Customer (id, name, referee_id) values ('2', 'Jane', NULL)
insert into Customer (id, name, referee_id) values ('3', 'Alex', 2)
insert into Customer (id, name, referee_id) values ('4', 'Bill', NULL)
insert into Customer (id, name, referee_id) values ('5', 'Zack', NULL)
insert into Customer (id, name, referee_id) values ('6', 'Mark', 2)
--  referee_id 가 id = 2가 아닌 쿼리문을 작성해라
-- 결과 : 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
-- 이 문제는 IS NULL을 알면 쉬운 문제이다.
SELECT
    NAME
FROM
    Customer
    WHERE REFEREE_ID != 2 OR REFERR_ID IS NULL 
-- 또는 COALESCE를 사용할 수 있다. 
-- COALESCE는 지정한 표현식들 중에 NULL이 아닌 첫 번째 갑을 반환한다.
-- ** 모든 DBMS에서 사용가능
SELECT 
    name
FROM 
    Customer
    WHERE COALESCE(referee_id,0) <> 2;