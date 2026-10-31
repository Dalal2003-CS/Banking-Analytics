USE ExcelFiels;
GO 
SELECT 
COUNT(*) AS TotalTransactions,
sum(transaction_amount_sar) AS TotalTransactionAmountSAR,
avg(transaction_amount_sar) AS AverageTransactionAmountSAR,
sum(fee_amount_sar) as TotalFeeSAR,
AVG(fee_amount_sar) as AverageFeeSAR,
MAX(TRANSACTION_AMOUNT_SAR) AS HighestTransactionSAR,
MIN(TRANSACTION_AMOUNT_SAR) AS LowestTransactionSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL;
