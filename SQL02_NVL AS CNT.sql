SELECT NVL(SUM(1),0) AS CNT FROM TABLE   // 해당 테이블에 행의 갯수를 세어 CNT 열에 넣는다.
// ﻿NVL은 만약 데이터 값이 NULL이라면 NVL(FALSE일시 값, TRUE일시 값)
// SUM(*)과 COUNT(*)가 있는데 여기서 SUM문은 반환 값이 없을 경우 NULL을 반환하고 COUNT는 0을 반환
// ﻿AS CNT를 하게 되면 열의 이름을 지정

SELECT COUNT(1) AS CNT FROM TABLE // 위의 쿼리문과 동일
﻿ // COUNT는 NULL값을 0으로 반환하기 때문에 따로 NVL로 지정을 하지 않아도 된다.
