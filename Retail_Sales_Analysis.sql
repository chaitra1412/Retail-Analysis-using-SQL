##Analysis

##-1)Top-performing industries in terms of sales for a year 2021, and how do their sales compare month-over-month?

With monthly_sales as (
select 
year,
month,
industry,
sum(sales) as total_sales
from  retail_Sales 
where
year = '2021'
group by
year,
month,
industry
),
top_industries as (
select 
year,
month,
industry,
total_sales,
rank() over( partition by year, month order by total_sales Desc) as industry_rank 
from 
monthly_sales
)

select
year, 
month,
industry,
total_sales
from 
top_industries
where
industry_rank = 1

order by total_sales desc,  year, month , industry;



-##-2)Top-performing industries in terms of sales for a year 2022, and how do their sales compare month-over-month?
With monthly_sales as (
select
year,
month,
industry,
sum(sales) as total_sales 
from retail_sales
where
year = 2022
group by
year,
month,
industry
),
top_industries as (
select 
month,
year,
industry, 
total_sales,
rank() over( partition by year, month order by total_sales desc) as industry_rank
from
monthly_sales
)
select
month,
year,
industry,
total_sales
from 
top_industries
where
industry_rank = 1

order by total_sales desc, year, month;


## Which specific kind of businesses contribute the most to total sales, and how does their performance vary across industries?

select 
kind_of_business,
industry,
Sum(sales) AS total_sales
from
retail_sales
group by 
kind_of_business,
industry
order by
total_sales desc;

##Business Question 3: Is there any seasonality in sales for specific industries, and how do they perform month-over-month for recent 3 years?
select
year,
month,
industry,
sum(sales) as total_sales
from 
retail_sales
where 
year > 2019
group by
year,
industry, 
month
order by
year, 
industry,
month;

##Business Question 4: How does the sales distribution vary among industries based on their North American Industry Classification System (NAICS) codes?

select
industry,
naics_code,
sum(sales) as total_sales
from
retail_sales
group by
industry,
naics_code
order by
naics_code,
total_sales desc;

##-Which businesses all-time average sale was above 10 billion dollars?

SELECT
    kind_of_business,
    AVG(sales) AS average_sale
FROM
    retail_sales
GROUP BY
    kind_of_business
HAVING
    AVG(sales) > 10000;
    
##Which kind of businesses within the automotive industry had the highest sales revenue for 2022?
Select
Kind_of_business,
industry,
year,
sum(sales) as total_sales
from
retail_sales
where
industry = 'Automotive' and 
year = 2022
group by
kind_of_business,
industry
order by
total_sales desc;


