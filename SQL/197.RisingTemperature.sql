Create table If Not Exists Weather (id int, recordDate date, temperature int)
Truncate table Weather
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10')
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25')
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20')
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30')

-- 어제의 날씨보다 더 더운 id의 query를 작성을 해라
-- 예시)
-- 2015-01-02는 어제의 날보다 더 더웠다 (10 -> 25)
-- 2015-01-04는 어제의 날보다 더 더웠다 (20 -> 30).

SELECT
    WEATHER.ID
FROM   
    WEATHER JOIN WEATHER W ON DATEDIFF(WEATHER.RECORDDATE ,W.RECORDDATE ) =1
    AND WEATHER.TEMPERATURE > W.TEMPERATURE
-- 이 문제에서는 날씨 차이 가져오기 함수를 써야한다. 
-- DATEDIFF또는 TIMESTAMPDIFF 사용해서 두 날짜의 차이를 일 단위로 리턴을 해야한다.
-- DATEDIFF(EXPR1, EXPR2)는 EXPR1 - EXPR2를 해서 결과 값을 리턴한다.
-- 참고 소스: https://codingdog.tistory.com/entry/mysql-datediff-%ED%95%A8%EC%88%98-%EB%91%90-%EB%82%A0%EC%A7%9C%EC%9D%98-%EC%B0%A8%EC%9D%B4%EB%A5%BC-%EC%9D%BC-%EB%8B%A8%EC%9C%84%EB%A1%9C-%EB%A6%AC%ED%84%B4%ED%95%B4-%EC%A4%80%EB%8B%A4