USE ExcelFiels;
GO
SELECT 
TRANSACTION_TYPE,
COUNT(*) AS TOTALTRANSACTIONS,
SUM (TRANSACTION_amount_sar) AS TotalAmountSAR,
AVG(TRANSACTION_AMOUNT_sar) AS AverageAmountSAR
FROM dbo.['CLEANED DATA$']
group by transaction_type
order by totalAmountSAR DESC;

