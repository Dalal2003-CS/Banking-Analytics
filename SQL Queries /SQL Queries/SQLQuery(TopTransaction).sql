SELECT TOP 10 
transaction_id,
account_id,
transaction_type,
transaction_amount_sar,
transaction_date
from dbo.['CLEANED DATA$']
where transaction_amount_sar IS NOT NULL
ORDER BY transaction_amount_sar DESC