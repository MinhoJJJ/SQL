SELECT 
    MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_FORMAT(DATE_OF_BIRTH,'%Y-%m-%d') AS DATE_OF_BIRTH  // 데이터 포맷을 이용해 년월일만 출력한다.
FROM MEMBER_PROFILE
WHERE 1=1
      AND MONTH(DATE_OF_BIRTH)='03'        // MONTH를 통해서 03월인 사람을 찾는다.
      AND TLNO IS NOT NULL                 // IS NOT NULL을 통해 핸드폰 번호가 있는 사람만 찾는다.   
      AND GENDER = 'W'                     // 여자인 사람만 찾는다.
ORDER BY MEMBER_ID ASC;                    // WHERE 문으로 구해진 사람을 오름차순 정리한다.