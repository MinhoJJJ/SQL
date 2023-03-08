-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    NAME,
    DATETIME
FROM ANIMAL_INS
ORDER BY NAME,DATETIME DESC;   -- ﻿이름이 만약 같은 사람이 있다면 보호 날짜가 더 높은 동물을 순으로 정렬을 해준다.