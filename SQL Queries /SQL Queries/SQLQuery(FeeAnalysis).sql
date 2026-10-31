USE ExcelFiels;
GO 
SELECT 
TRANSACTION_type,
count(*) AS TOTALTRANSACTIONS,
SUM (FEE_AMOUNT_SAR) AS TotalFeeSAR,
AVG (FEE_AMOUNT_SAR) AS AverageFeeSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL
group by transaction_type 
order by totalfeesar desc;
 
