-- 더미테이블 DUAL : 단순계산, 산술연산,함수 결과등 쿼리 결과를 손쉽게 확인해볼 수 있는 임시테이블
-- LEVEL 계층형 쿼리에서 자주쓰는 CONNECT BY절에서 LEVEL을 수용하면,원하는 행을 리턴(LEVEL을 사용하여 FOR문처럼 활용가능)
-- ex> selet LEVEL from DUAL connect by LEVEL <= 10;
-- CONNEVT BY LEVEL <= ?(숫자)를 사용하면 1부터 ?(숫자)까지 LEAVEL 값이 증가
-- LEVEL = ROWNUM ()
-- 참고 :https://royzero.tistory.com/60  - 암시적 JOIN에 대한 설명
-- 참고 :https://madinthe90.tistory.com/25 - 계층형 쿼리 구문 LEVEL

SELECT A.HOUR, COUNT(B.HOUR)
FROM (SELECT ROWNUM-1 AS HOUR FROM DUAL CONNECT BY ROWNUM <=24) A, --lEVEL 대신 ROWNUM 사용가능
     (SELECT TO_CHAR(DATETIME, 'HH24') AS HOUR FROM ANIMAL_OUTS) B
 WHERE A.HOUR = B.HOUR(+) -- LEFT OUTER JOIN(왼쪽을 기준으로 오른쪽에 매칭되는 데이터가 없어도 표현해주는 방식)
 GROUP BY A.HOUR          --  +괄호 부분 삭제 => equal 기호안에 LEFT OUTER JOIN 이라고 명시적으로 적어도 가능
 ORDER BY A.HOUR  