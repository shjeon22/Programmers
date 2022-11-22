 방법 1: LIFT JOIN(on)

SELECT A.ANIMAL_ID, A.NAME 
FROM ANIMAL_OUTS A LEFT JOIN ANIMAL_INS B  
ON(A.ANIMAL_ID =B.ANIMAL_ID)
WHERE B.ANIMAL_ID IS NULL
ORDER BY A.ANIMAL_ID
------------------------------------------------------------------------------------------------------------------

 방법 2: RIGHT JOIN (By using)
 
SELECT B.ANIMAL_ID, B.NAME
FROM ANIMAL_INS A RIGHT JOIN ANIMAL_OUTS B    
ON A.ANIMAL_ID=B.ANIMAL_ID
WHERE A.ANIMAL_ID IS NULL
ORDER BY B.ANIMAL_ID

-------------------------------------------------------------------------------------------------------------------

방법 3: MINUS 연산자 이용

SELECT ANIMAL_ID, NAME
FROM ANIMAL_OUTS
MINUS
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS

오라클에서 MINUS 연산자를 사용하면 서로 다른 쿼리문에서 차집합의 데이터를 구할 수 있다. 
MINUS 연산자는 다른 데이터베이스의 EXCEPT 연산자와 비슷한 기능을 하며, 중복 값이 제거된 차집합 데이터가 반환
MINUS 연산자를 사용하여 쿼리문을 작성하면 직관성을 좋지만 성능에 이슈가 발생하는 경우가 많다. 
성능 이슈가 발생하면 NOT EXISTS 연산자로 쿼리문을 변경하는 것도 성능 향상에 좋은 방법이다
EXISTS(서브 쿼리)는 서브 쿼리의 결과가 "한 건이라도 존재하면" TRUE 없으면 FALSE를 리턴한다.
EXISTS는 서브 쿼리에 일치하는 결과가 한 건이라도 있으면 쿼리를 더 이상 수행하지 않는다.

IN과 EXISTS 와의 차이
IN과 EXISTS는 같은 결과가 조회된다.
IN은 서브쿼리 결과를 모두 수행하고, EXISTS는 일치하는 결과가 있으면 더 이상 수행하지 않는다.



