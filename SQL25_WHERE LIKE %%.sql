-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE 1=1
AND NAME LIKE '%el%'
AND ANIMAL_TYPE='Dog'
ORDER BY NAME;