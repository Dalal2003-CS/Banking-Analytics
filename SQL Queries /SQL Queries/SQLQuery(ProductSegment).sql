select product_segment ,
count(*) AS TotalTransactions ,
SUM (transaction_amount_sar) as TotalAmountSAR,
avg(transaction_amount_sar) as AverageAmountSAR,
SUM (fee_amount_sar) AS TotalFeeSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL
group by PRODUCT_SEGMENT
ORDER BY TotalAmountSAR desc;

