-- 코드를 입력하세요
SELECT
    COUNT(*) AS USERS          // WHERE 조건문들에 해당하는 셀을 세서 USERS라는 이름으로 출력을 합니다.
FROM USER_INFO
WHERE 1=1
    AND JOINED LIKE "%2021%"       // 2021년에 가입한 사람을 찾습니다.
    AND 20<=AGE                    // 나이가 20세 이상인 사람을 찾습니다.
    AND AGE<=29                    // 나이가 29세 이하인 사람을 찾습니다.