use ExcelFiels;
go 
select account_type ,
count(*) AS totalTransactions,
AVG (ACCOUNT_BALANCE_SAR) AS AverageBalanceSAR,
MAX  (ACCOUNT_BALANCE_SAR) AS HighestBalanceSAR,
MIN  (ACCOUNT_BALANCE_SAR) AS LowestBalanceSAR
from dbo.['CLEANED DATA$']
WHERE TRANSACTION_ID IS NOT NULL
group by account_type 
order by AverageBalanceSAR desc;