SELECT
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE                               --ONLINE_SALE에서 USER_ID, PRODUCT_ID를 아래 조건에 맞게 출력합니다.
GROUP BY USER_ID,PRODUCT_ID                    -- 두 컬럼을 그룹화 시킵니다. 
HAVING COUNT(*)>=2                             -- 그룹화 된 컬럼중에 2개 이상인 것을 고릅니다. 
ORDER BY USER_ID ASC, PRODUCT_ID DESC          -- 2개 이상인 컬럼을 아이디별로 오름차순 같다면 상품아이디 별로 내림차순합니다.