SELECT BRANCH_CITY,
COUNT(*) AS TOTALTRANSACTIONS ,
sum(transaction_amount_sar) AS TotalAmountSAR,
AVG(TRANSACTION_AMOUNT_SAR) AS AverageAmountSAR,
SUM (fee_amount_sar) AS TotalFeeSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL
group by branch_city 
order by TotalAmountSAR DESC;





