SELECT 
     A.REST_ID,               --REST_INFO에서는 REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS를 가져옵니다.
     A.REST_NAME,              
     A.FOOD_TYPE, 
     A.FAVORITES, 
     A.ADDRESS, 
     B.SCORE                  --B (REST_REVIEW)에서 REST_ID로 만든 평균 결과를 나타내는 컬럼입니다.
FROM ( REST_INFO A JOIN (SELECT C.REST_ID, ROUND(AVG(C.REVIEW_SCORE),2) AS SCORE
                 FROM REST_REVIEW C       --REST_REVIEW의 ID와 리뷰 컬럼을 가져오고 ID 기준으로 GROUP BY를 시킵니다.
                 GROUP BY C.REST_ID) B ON A.REST_ID = B.REST_ID)  --JOIN으로 A,B 테이블의 REST_ID 컬럼이 연결되었습니다.
WHERE A.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, A.FAVORITES DESC;