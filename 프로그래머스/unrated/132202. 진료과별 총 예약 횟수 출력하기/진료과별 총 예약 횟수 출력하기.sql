-- 코드를 입력하세요
SELECT  MCDP_CD          AS "진료과코드"
     ,  COUNT(APNT_NO)   AS  "5월예약건수"
FROM    APPOINTMENT 
WHERE   1=1
AND     TO_CHAR(APNT_YMD,'YYYY-MM') = '2022-05'
GROUP BY MCDP_CD
ORDER BY "5월예약건수" ASC , "진료과코드" ASC