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


