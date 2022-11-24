Create table If Not Exists Person (id int, email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'a@b.com')
insert into Person (id, email) values ('2', 'c@d.com')
insert into Person (id, email) values ('3', 'a@b.com')

-- order에 상관없이 중복된 email 값을 return.


SELECT
	EMAIL
from
	person
	group by email 
	having COUNT(EMAIL)>1

    -- SELECT Email을 하고 groupby로 email을 그룹한다 그다음 having을 사용해서 해당하는 값이
    -- 1보다 큰 즉 중복되는 것을 가져온다. 