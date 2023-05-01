-- 코드를 입력하세요
SELECT 
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE 1=1
AND  NOT INTAKE_CONDITION='Aged'   -- where 절에 not을 사용
ORDER BY ANIMAL_ID;
    