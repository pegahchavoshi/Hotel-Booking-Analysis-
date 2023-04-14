# Hotel Data Analysis

## Description

The hotel project involves creating a database to analyze and visualize hotel booking data using SQL(SSMS). The objective is to build a visual data story or dashboard using Power BI to present to stakeholders. To achieve this, the following requirements were identified:

* Whether the hotel revenue is growing by year
* Analyzing trends in guests with personal cars to determine if the hotel needs to increase parking lot size
* Identify trends in the data with a focus on the average daily rate and guests to explore seasonality


To initiate the project, I performed a data merge of three tables utilizing the UNION command to generate a consolidated table with a total row count of 90,776. Here's the SQL query that I used for this step:


## revenue Analysis

This analysis will be carried out by utilizing data from separate tables containing information for 2018, 2019, and 2020. In order to facilitate the analysis process, these tables will need to be combined into a single table. The following SQL code accomplishes this task:


SELECT * FROM dbo.[2018]

UNION

SELECT * FROM dbo.[2019]

UNION

SELECT * FROM dbo.[2020]

SELECT column1, column2
FROM table1
WHERE column3 = 'value';


