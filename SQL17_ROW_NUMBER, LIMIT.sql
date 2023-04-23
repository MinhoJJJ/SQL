SELECT
    NAME             
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;    // 상위 1개의 컬럼만 출력한다.


SELECT
    NAME
FROM(
    SELECT
        row_number() OVER (ORDER BY DATETIME) AS NUM,    // 이름을 DATETIME순으로 정렬한다.
        NAME
    FROM ANIMAL_INS
    ORDER BY DATETIME
)
WHERE 1=1
AND NUM=1;    // 내부 쿼리 안의 NUM컬럼에서 1인 값을 찾는다.
