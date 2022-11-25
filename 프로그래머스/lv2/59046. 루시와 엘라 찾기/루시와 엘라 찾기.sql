-- IN 연산자를 사용하는 경우

select animal_id, name, sex_upon_intake
from animal_ins
where name in ('Lucy', 'Ella', 'Pickle', 'Sabrina', 'Mitty')
order by animal_id
