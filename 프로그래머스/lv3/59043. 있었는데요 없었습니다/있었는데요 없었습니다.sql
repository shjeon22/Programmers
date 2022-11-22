EX1 (ON절 이용) > (ANSI JOIN) 국제적 표준 조인 방법

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A  INNER JOIN ANIMAL_OUTS  B  --INNER JOIN(명시적) =JOIN
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME > B.DATETIME  
ORDER BY A.DATETIME ASC;

-------------------------------------------------------------------------------------------

EX 2.(USING 이용) > (ANSI JOIN) 국제적 표준 조인 방법

SELECT ANIMAL_ID, A.NAME
FROM ANIMAL_INS A  INNER JOIN ANIMAL_OUTS B 
USING(ANIMAL_ID)
WHERE A.DATETIME > B.DATETIME
ORDER BY A.DATETIME

-------------------------------------------------------------------------------------------

EX 3> 암묵적 조인 (FROM절에 JOIN 생략 쉼표(,)구분 , 및 ON,USING절 => WHERE절에 명시 )

SELECT A.ANIMAL_ID, A.NAME  
FROM ANIMAL_INS A,ANIMAL_OUTS B 
WHERE A.ANIMAL_ID = B.ANIMAL_ID
AND A.DATETIME > B.DATETIME
ORDER BY A.DATETIME;

-------------------------------------------------------------------------------------------

EX 4> Subquery -서브쿼리 이용

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A
WHERE A.DATETIME > (SELECT DATETIME 
                    FROM ANIMAL_OUTS 
                    WHERE ANIMAL_ID = A.ANIMAL_ID)
ORDER BY DATETIME;
