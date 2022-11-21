- NVL 함수 사용법 -
//NVL(컬럼,NULL일경우 반환값) 
//NVL(컬럼,0) -- 컬럼의 값이 NULL일경우 0으로 치환
//NVL(컬럼,'') -- 컬럼의 값이 NULL일경우 ''으로 치환
//NVL(컬럼,SYSDATE) --컬럼의 값이 NULL일경우 현재날짜로 치환

- NVL2 함수 사용법 -
// NVL2('컬럼','NULL이 아닐 경우 반환값','NULL일경우 반환값')
// NVL2(컬럼,'정규직','비정규직') -- 컬럼의 값이 NULL이 아닐경우 정규직 NULL일경우 비정규직
// NVL2(컬럼,'남','여') -- 컬럼의 값이 NULL이 아닐경우 남 NULL일경우 여


SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, NVL(FREEZER_YN,'N') FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기%'
ORDER BY WAREHOUSE_ID;
