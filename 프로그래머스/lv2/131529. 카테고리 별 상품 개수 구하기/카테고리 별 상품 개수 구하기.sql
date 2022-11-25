-- COUNT(*)- 조회된 전체행 건수를 반환한다
-- COUNT(컬럼)- 컬럼의 값이 NULL인 행은 카운트 하지 않는다
-- COUNT(DISTINCT 컬럼)- 컬럼 값을 중복제거하고, 컬럼의 값 건수를 반환한다

-- SUBSTR 과 INSTR
--1 . SUBSTR 사용법(문자열, 시작위치, 길이)
-- SUBSTR(CHAR,POS,LEN)

--2. INSTR 사용법(문자열, 타겟문자열, 시작위치, 횟수)
-- INSTR(STR,SUBSTR,POS,OCCUR)

-- WITH EXAMPLE AS(
-- SELECT '동해물과 백두산이 마르고 닳도록' AS STR FROM DUAL
-- )

-- SELECT
-- SUBSTR(STR,1,4), --STR의 1번째 글자부터 4개 자르기
-- SUBSTR(STR,5,5), --STR의 5번째 글자부터 5개 자르기
-- SUBSTR(STR,10), --STR의 10번째 글자부터 끝까지 자르기
-- SUBSTR(STR,-7,3), --STR의 뒤에서 3번째 글자부터 3글자 자르기
-- SUBSTR(STR,-3), --STR의 뒤에서 3번째 글자부터 끝까지 자르기
-- INSTR(STR, ' '), --' ' STR에서 띄어쓰기 있는 문자 위치 찾기
-- INSTR(STR, ' ', 7), --STR의 7째 문자부터 띄어쓰기가 있는 문자 위치 찾기
-- INSTR(STR, ' ', 7,2), --STR의 7째 문자부터 2번째 띄어쓰기가 있는 문자 찾기
-- SUBSTR(STR, 0, INSTR(STR, ' ', 1, 2)) --띄어쓰기 2번째 문자열까지 문자열 자르기
-- FROM
-- EXAMPLE

SELECT SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY, COUNT(*) AS PRODUCTS 
FROM PRODUCT
GROUP BY SUBSTR(PRODUCT_CODE, 1, 2)
ORDER BY CATEGORY;