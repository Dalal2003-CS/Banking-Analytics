use ExcelFiels; 
GO 
select DB_NAME() AS CURRENTDATABASE ;


SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYpE = 'BASE TABLE';

select column_name,data_type
from INFORMATION_SCHEMA.COLUMNS
where table_name = 'cleaned data';

