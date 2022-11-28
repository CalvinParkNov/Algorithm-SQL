Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int)
Truncate table Activity
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5')
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6')
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5')
-- player_id, event_date가 테이블의 PK이다
-- This table shows the activity of players of some games.
-- Each row is a record of a player who logged in and played a number of games (possibly 0)
--  before logging out on someday using some device.

-- Write an SQL query to report the first login date for each player.

-- Return the result table in any order.

-- The query result format is in the following example.

Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+


Output: 
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+

-- SOLUTION: 
SELECT 
    player_id,
    MIN(event_date) first_login
FROM
    Activity
    GROUP BY player_id

-- 해설: 
-- 이 문제는 SQL의 DATE MIN FUNCTION을 알아야 한다. MIN을 사용하면 최초의 DATE값을 리턴한다.
-- 반대로 MAX를 하게 되면 최근의 DATE 값을 리턴한다.