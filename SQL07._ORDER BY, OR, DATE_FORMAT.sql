-- 코드를 입력하세요
SELECT 
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS HIRE_YMD    // 고용일자를 데이터포맷으로 알맞게 바꾸고 이름을 네이밍합니다.
FROM DOCTOR
WHERE 1=1
AND MCDP_CD='CS' OR MCDP_CD='GS'            // or을 사용해서 두가지 경우를 전부 검색합니다.
ORDER BY HIRE_YMD DESC, DR_NAME;            // 오더바이 조건에 하나를 더붙여서 처음 오더바이문을 수행하고 뒤에것을 수행합니다.