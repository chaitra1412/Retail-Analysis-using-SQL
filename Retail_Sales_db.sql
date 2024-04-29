Create database retail_sales;

use retail_sales;

create table retail_sales (
id serial  primary key,
month int not null,
year int not null,
naics_Code int not null,
kind_of_business text,
industry text,
sales integer default null

);
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.3/Uploads/us_monthly_retail_sales_wrangled.csv' into table retail_sales 
fields terminated by ',' 
ESCAPED BY '\\'
ENCLOSED BY '"' 
lines terminated by '\n'  
ignore 1 lines ;

## Modifications
SELECT MAX(id) FROM retail_sales;
ALTER TABLE retail_sales MODIFY id INT; ## for error duplicate primary key
UPDATE retail_sales SET sales = NULL WHERE sales = 0; ## Incorrect integer value
SET SQL_SAFE_UPDATES = 0; ## you are using safe update mode
ALTER TABLE retail_sales MODIFY COLUMN naics_Code VARCHAR(500); ## dataturncated for column

select * from retail_sales limit 50;





