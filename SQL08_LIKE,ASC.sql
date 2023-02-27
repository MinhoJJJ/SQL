-- 코드를 입력하세요
SELECT 
    FACTORY_ID.       // 공장아이디
    , FACTORY_NAME    // 공장 이름
    , ADDRESS         // 주소
FROM FOOD_FACTORY     // 데이터베이스 테이블
WHERE 1=1
AND ADDRESS LIKE '%강원도%'          // 주소에서 강원도가 포함된 열
ORDER BY FACTORY_ID ASC;           // 찾을 열들을 아이디에 따라 오름차순 정리