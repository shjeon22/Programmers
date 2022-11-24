ROWNUM 사용시 항상 SUBQUERY 를 사용하여 정렬을해줘야됩니다.
왜냐하면 INDEX 값이 123456 이렇게 있는데 내가 JOIN이라던지  다른 연산자로 임의로 수를 바꿔버리게 되는 경우도
ROWNUM 순서는 변경된값으로 지정되지 않기 때문에 ROWNUM 을 사용할때는 SUBQUERY로 정렬을해주고 사용해 주어야 합니다.


SELECT FLAVOR
  FROM (SELECT A.FLAVOR,SUM(A.TOTAL_ORDER+B.TOTAL_ORDER) AS TOTAL
          FROM FIRST_HALF A,JULY B
         WHERE A.FLAVOR = B.FLAVOR
      GROUP BY A.FLAVOR
      ORDER BY SUM(A.TOTAL_ORDER+B.TOTAL_ORDER) DESC
) 
 WHERE ROWNUM <= 3
 
