-- 코드를 입력하세요
select A.category, A.max_price, f.product_name
from food_product f, (SELECT category, max(price) max_price
                      from food_product
                      where category in ('과자', '국', '김치', '식용유')
                      group by category)A
where f.category = A.category and f.price = A.max_price
order by A.max_price desc