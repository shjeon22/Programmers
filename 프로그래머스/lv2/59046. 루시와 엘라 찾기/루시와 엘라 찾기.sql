
1.정규 표현식을 사용하는 경우
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE 
FROM ANIMAL_INS
WHERE REGEXP_LIKE(NAME, 'Lucy|Ella|Pickle|Rogan|Sabrina|Mitty') 
ORDER BY ANIMAL_ID ;

정규 표현식:regexp_like는 단순히 문자열이 포함되어있는지 비교하는 LIKE를 넘어서, 정규식을 비교하여 일치할 경우 추출해주는 함수입니다.
참고 자료:https://jhnyang.tistory.com/292


2.IN 연산자를 사용하는 경우

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE 
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID ;


3.참고@

SELECT DISTINCT ANIMAL_ID,NAME,SEX_UPON_INTAKE 
FROM ANIMAL_INS 
WHERE NAME='Lucy' or NAME='Ella' or NAME='Pickle' or NAME='Rogan' or NAME='Sabrina' or NAME='Ella' ORDER BY     ANIMAL_ID;
like 는 비교하려는 대상이 두 개 이상일 때 사용가능합니다. 
예를들어 name이 Lucy, Ella두 이름중 들어가 있는것을 비교 할땐 in을 쓰고
비교 대상이 하나일때 즉, name이 lucy인지 알아보려할 땐 =을 씁니다.
위의 식은 name이라는 컬럼에서 각 이름에 하나씩 찾아보는 것이고
in을 쓰려면 in (이름들~)로 묶어서 비교할 수 있습니다.




