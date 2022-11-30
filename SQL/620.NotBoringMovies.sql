Create table If Not Exists cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1))
Truncate table cinema
insert into cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9')
insert into cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5')
insert into cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2')
insert into cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6')
insert into cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1')

-- ID는 cinema 테이블의 PK이다.

-- ID가 홀수 이면서 description이 "boring" 하지 않는 영화를 rating이 내림차순으로 return 하는 쿼리문을 완성해라
Cinema table:
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |
+----+------------+-------------+--------+
Output:
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
+----+------------+-------------+--------+

Runtime: 461 ms
SELECT 
	id,
	movie,
	description,
	rating
FROM 
	cinema
WHERE 
	id % 2 = 1 AND description <> 'boring'
	order by rating desc

-- mod(n, m) n을 m으로 나눈 나머지 를 반환하는 함수를 활용한 풀이
select
    *
from 
    cinema
    where mod(id, 2) = 1 and description != 'boring'
    order by rating DESC;