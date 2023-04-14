WITH hotel AS (

SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])


SELECT * FROM hotel
LEFT JOIN dbo.market_segment
ON hotel.market_segment=dbo.market_segment.market_segment
LEFT JOIN dbo.meal_cost
ON dbo.meal_cost.meal=hotel.meal
