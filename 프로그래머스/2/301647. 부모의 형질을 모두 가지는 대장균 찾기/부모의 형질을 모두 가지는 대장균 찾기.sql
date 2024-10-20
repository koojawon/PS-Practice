-- 코드를 작성해주세요
SELECT ED.ID,ED.GENOTYPE,EDP.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA AS ED
JOIN ECOLI_DATA AS EDP
ON EDP.ID = ED.PARENT_ID
WHERE ED.GENOTYPE & EDP.GENOTYPE = EDP.GENOTYPE
ORDER BY ED.ID