# Hotel Data Analysis

## Description

The hotel project involves creating a database to analyze and visualize hotel booking data using SQL(SSMS). The objective is to build a visual data story or dashboard using Power BI to present to stakeholders. To achieve this, the following requirements were identified:

* Whether the hotel revenue is growing by year
* Analyzing trends in guests with personal cars to determine if the hotel needs to increase parking lot size
* Identify trends in the data with a focus on the average daily rate and guests to explore seasonality


## Revenue Analysis

This analysis will be carried out by utilizing data from separate tables containing information for 2018, 2019, and 2020.

## Data preparation

The data is available in separate tables for 2018, 2019, and 2020, and needs to be combined into one table to facilitate analysis.
To combine the tables into one, the following SQL code was executed:


SELECT * FROM dbo.[2018]

UNION

SELECT * FROM dbo.[2019]

UNION

SELECT * FROM dbo.[2020]


This resulted in a table with 90,776 rows.


### Revenue Calculation

to calculate the revenue, we need to check if the table has a Revenue column. If it does not exist, we can create it using the following SQL code:

WITH hotel AS (

SELECT * FROM dbo.[2018]

UNION

SELECT * FROM dbo.[2019]

UNION

SELECT * FROM dbo.[2020])

SELECT (stays_in_weekend_nights + stays_in_week_nights)*adr

FROM hotel


This calculates the revenue using the formula (stays_in_weekend_nights + stays_in_week_nights) * adr. The resulting table will have a column named "revenue" with the calculated revenue for each row.


In the previous section, we analyzed the revenue growth of a hotel over the last three years by merging separate tables and adding a revenue column to the table. We further segmented the revenue by grouping them by year and hotel type.

Now, we want to see if the revenue is increasing or not. By adding an additional column called arrival_date_year to the previous query, we were able to group and sum the revenue by year. The results showed that the revenue for the hotel in 2018 was 4 million, in 2019 it was 16 million, and in 2020 it was 14 million. This indicates that the revenue was growing until 2019 and slightly decreased in 2020.


WITH hotel AS (

SELECT * FROM dbo.[2018]

UNION

SELECT * FROM dbo.[2019]

UNION

SELECT * FROM dbo.[2020])

SELECT 

arrival_date_year,

hotel,

round(SUM((stays_in_weekend_nights + stays_in_week_nights)*adr),2) AS revenue 

FROM hotel

GROUP BY arrival_date_year,hotel



