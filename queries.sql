CREATE DATABASE sales_analysis;
USE sales_analysis;
SHOW TABLES;
select * from superstore;

SELECT
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM superstore;

SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    MONTH(STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS Month_No,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;


SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
