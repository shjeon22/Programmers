 -- SELECT *FROM ANIMAL_INS
select b.animal_id, b.animal_type,b.name
from  (
       select animal_id, 
              sex_upon_intake as insex
       from   animal_ins
       where  sex_upon_intake in ('Intact Female', 'Intact Male')
      ) a,
       animal_outs b
where 1=1
and   a.animal_id = b.animal_id
and   b.sex_upon_outcome in ('Spayed Female', 'Neutered Male')
order by 1 -- SELECT 중에 첫번쨰컬럼에 대한 정렬만나옴

-- SELECT *
-- FROM 
-- (SELECT ANIMAL_ID, SEX_UPON_INTAKE, NAME, ANIMAL_TYPE FROM ANIMAL_INS
-- INTERSECT
-- SELECT ANIMAL_ID ,SEX_UPON_OUTCOME, NAME, ANIMAL_TYPE  FROM ANIMAL_OUTS) 
-- WHERE SEX_UPON_INTAKE NOT IN('Intact Male','Intact Female')
-- ORDER BY ANIMAL_ID ASC;

-- SELECT A.ANIMAL_ID,A.ANIMAL_TYPE,A.NAME
--   FROM ANIMAL_INS A,  ANIMAL_OUTS B
--  WHERE A.ANIMAL_ID = B.ANIMAL_ID
--    AND A.sex_upon_intake <> B.sex_upon_outcome
   
 