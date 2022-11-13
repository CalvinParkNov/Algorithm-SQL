Create table If Not Exists Scores (id int, score DECIMAL(3,2))
Truncate table Scores
insert into Scores (id, score) values ('1', '3.5')
insert into Scores (id, score) values ('2', '3.65')
insert into Scores (id, score) values ('3', '4.0')
insert into Scores (id, score) values ('4', '3.85')
insert into Scores (id, score) values ('5', '4.0')
insert into Scores (id, score) values ('6', '3.65')

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | score       | decimal |
-- +-------------+---------+
-- id는 Scores테이블의 PK이다
-- Score는 소수점을 포함한 숫자이다.

-- 랭크를 표현하는 쿼리를 작성해라
-- 높은 점수부터 낮은 점수까지
-- 같은 점수가 있으면 공동랭킹으로
-- 공동랭킹 후 다음 랭킹숫자로 표현해라. 예) 1위 1위 2위, 3위, 3위 4위. 

-- 결과: 
-- +-------+------+
-- | score | rank |
-- +-------+------+
-- | 4.00  | 1    |
-- | 4.00  | 1    |
-- | 3.85  | 2    |
-- | 3.65  | 3    |
-- | 3.65  | 3    |
-- | 3.50  | 4    |
-- +-------+------+

-- 이문제는 MySQL의 RANK()함수로 문제를 풀 수 있다.
-- 하지만 RANK()함수는 3가지이다.

-- 1. DENSE RANK
-- ㄴ 이번 문제 에서 필요한 함수이다.

-- 2. RANK
-- ㄴ 공동순위가 있으면 다음 번호를 뛰고 +1 이된다. 예) 1위, 1위, 3위

-- 3. PERCENT RANK
-- ㄴ 행에 대한 백분위수 순위(상대 순위)를 계산하는 함수이다. 0과 1사이의 값의 범위 숫자를 반환한다

-- MySQL에서는 이미 rank라는 함수가 존재하기 때문에 AS rank로하면 오류가 난다. 그러므로 Backtick(`)을 사용해야 한다.

SELECT
    SCORE,
    DENSE_RANK() OVER(ORDER BY SCORE desc) `rank`
FROM 
    SCORES

-- 이 문제는 사실 RANK라는 함수를 모르면 시간을 많이 잡아먹을 수 도 있다. 
-- 또한 Backtick을 사용해서 MySQL에서 이미 가지고 있는 함수명을 출력할 수 있게 해야한다.
-- (274 ms)완료.