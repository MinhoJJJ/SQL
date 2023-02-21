SELECT  A.FLAVOR                                     // A 테이블의 FLAVOR을 출력합니다.
FROM FIRST_HALF A INNER JOIN ICECREAM_INFO B         // INNER JOIN으로 두 테이블을 묶습니다.
ON A.FLAVOR=B.FLAVOR                              // 두 테이블에서 FLAVOR 컬럼을 합칩니다. A의 결과 B의 결과를 다 받게됩니다.
WHERE 1=1
AND B.INGREDIENT_TYPE='fruit_based'              // 첫번째 조건인 과일 베이스 조건
AND A.TOTAL_ORDER>3000                           // 두번째 조건 토탈 금액 3000 이상
ORDER BY TOTAL_ORDER DESC;                       // 세번째 조건 큰것부터 정렬
