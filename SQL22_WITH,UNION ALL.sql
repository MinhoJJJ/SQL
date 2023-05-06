WITH SALES_DATA AS (
    SELECT  SALES_DATE         --온라인과 오프라인 테이블을 UNION ALL로 합치고 WITH를 이용해서 SALES_DATA라는 테이블을 만든다.
            , PRODUCT_ID
            , USER_ID
            , SALES_AMOUNT
    FROM    ONLINE_SALE
        UNION ALL 
    SELECT  SALES_DATE
            , PRODUCT_ID
            , NULL AS USER_ID
            , SALES_AMOUNT
    FROM    OFFLINE_SALE
)
SELECT  DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE    --날짜 포맷을 년,월,일로 바꿔준다.
        , PRODUCT_ID
        , USER_ID
        , SALES_AMOUNT
FROM    SALES_DATA                      -- 가상 테이블의 데이터를 불러온다.
WHERE   SALES_DATE LIKE '2022-03%'
ORDER BY    SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC    -- 조건들을 건다