-- 코드를 작성해주세요
SELECT FI.ID, FN.FISH_NAME AS FISH_NAME, FI.LENGTH AS LENGTH
FROM FISH_INFO FI
LEFT JOIN FISH_NAME_INFO FN
ON FI.FISH_TYPE = FN.FISH_TYPE
WHERE FI.LENGTH IN (
    SELECT MAX(LENGTH)
    FROM FISH_INFO
    GROUP BY FISH_TYPE
) AND FI.LENGTH IS NOT NULL
ORDER BY FI.ID