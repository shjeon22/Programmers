SELECT APNT_NO, PT_NAME, PT_NO, MCDP_CD, DR_NAME, APNT_YMD
FROM
(SELECT C.APNT_NO, A.PT_NAME, A.PT_NO, B.MCDP_CD, B.DR_NAME, C.APNT_YMD, C.APNT_CNCL_YN
FROM PATIENT A, DOCTOR B, APPOINTMENT C
WHERE A.PT_NO=C.PT_NO AND B.DR_ID=C.MDDR_ID)
WHERE TO_CHAR(APNT_YMD,'YYYYMMDD') = '20220413'
AND MCDP_CD = 'CS'
AND APNT_CNCL_YN = 'N'
ORDER BY APNT_YMD