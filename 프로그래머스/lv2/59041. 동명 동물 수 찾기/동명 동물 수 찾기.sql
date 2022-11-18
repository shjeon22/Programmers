-- 동물 보호소에 들어온 동물 이름중  두번 이상 쓰인 이름과 해당이름이 쓰인 횟수 조회
-- 결과는 이름이 없는 동물은 집계에서 제외(결과는 이름순으로 조회)

SELECT NAME,COUNT(ANIMAL_TYPE) FROM ANIMAL_INS 
WHERE NAME IS NOT NULL GROUP BY NAME  HAVING COUNT(*)>=2
ORDER BY NAME;