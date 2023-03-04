SELECT 
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    IFNULL(TLNO,'NONE') AS TLNO    // IFNULL은 (컬럼명,  NULL일경우 들어갈 값)으로 사용하며 AS로 컬럼명을 재정의해줍니다.
FROM PATIENT 
WHERE 1=1
AND AGE <= 12
AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME;   // ORDER BY는 맨처음 조건 그 뒤로는 처음 조건이 같을 경우 다시 해줄 조건을 쓸 수 있습니다.
    