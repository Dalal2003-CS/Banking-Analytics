USE ExcelFiels;
GO 
SELECT CHANNEL,
COUNT(*) AS TotalTransactions,
sum (transaction_amount_sar) AS TotalAmountSAR,
avg(transaction_amount_sar)AS AverageAmountSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL
group by channel 
order by TotalAmountSAR desc;






\
