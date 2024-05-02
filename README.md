

**Overview**

This SQL analysis is conducted on a dataset containing information about retail sales. The dataset includes details such as the month and year of sales, NAICS (North American Industry Classification System) code, kind of business, industry, and sales amount. The analysis aims to provide insights into various aspects of retail sales, including top-performing industries, sales distribution, seasonality, and more.


**Dataset Description**

Database Name: retail_sales

Table Name: retail_sales

Columns:

id: Serial primary key

month: Month of sales  

year: Year of sales

naics_code: NAICS code for industry classification

kind_of_business: Type of business

industry: Industry category

sales: Sales amount


**Analysis Queries**

1.Top-performing industries in terms of sales for the year 2021: Analyzes the top-performing industries based on sales for the year 2021 and compares their sales month-over-month.

2.Top-performing industries in terms of sales for the year 2022: Identifies the top-performing industries based on sales for the year 2022 and compares their sales month-over-month.

3.Contribution of different kinds of businesses to total sales:Determines the kinds of businesses contributing the most to total sales and analyzes their performance across industries.

4.Seasonality in sales for specific industries over recent 3 years: Investigates the presence of seasonality in sales for specific industries over the past three years and analyzes their month-over-month performance.

5.Sales distribution among industries based on NAICS codes:Examines the sales distribution among industries based on their NAICS codes.

6.Average sale of businesses exceeding 10 billion dollars:Identifies businesses with an all-time average sale above 10 billion dollars.

7.Businesses within the automotive industry with the highest sales revenue for 2022: Determines the kind of businesses within the automotive industry that had the highest sales revenue for the year 2022.


**Data Source**

The data for this analysis is sourced from the file 'us_monthly_retail_sales_wrangled.csv'.


**Execution Instructions**

Create Database and Table: Run the SQL code provided to create the 'retail_sales' database and 'retail_sales' table.

Data Loading: Use the 'LOAD DATA INFILE' command to load data from the CSV file into the 'retail_sales' table.

Execute Analysis Queries: Run the SQL queries provided under each analysis question to obtain insights into the retail sales data.

Conclusion

This README document provides an overview of the SQL analysis conducted on retail sales data, including the dataset description, analysis queries, data source, execution instructions, and conclusion. The analysis aims to offer valuable insights into various aspects of retail sales for informed decision-making.



