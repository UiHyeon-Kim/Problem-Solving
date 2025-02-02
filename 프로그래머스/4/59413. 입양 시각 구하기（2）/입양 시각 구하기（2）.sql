-- 코드를 입력하세요
WITH RECURSIVE HOURS AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM HOURS WHERE HOUR < 23
)
SELECT H.HOUR, COUNT(A.DATETIME) AS COUNT
FROM ANIMAL_OUTS A RIGHT JOIN HOURS H ON HOUR(A.DATETIME) = H.HOUR
GROUP BY H.HOUR
ORDER BY H.HOUR