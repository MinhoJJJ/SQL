SELECT ROUND(SUM(DAILY_FEE) / COUNT(CAR_TYPE)) AS AVERAGE_FEE    // round로는 평균을  sum으로는 요금 합을 
                                                                 // count로는 총 suv 대수를 
                                                                 //  as는 구한 값을 average_fee 라는 테이블에 담습니다.
FROM CAR_RENTAL_COMPANY_CAR                                      // 해당 정보들을 car_retal_company_car에서 가져옵니다.
WHERE 1=1                                                        // where만해도 되지만 참인 값을 가져오기위해 1=1
AND CAR_TYPE='SUV';                                              // 타입이 'suv'인 것들 중에서 위의 select문을 실행합니다.