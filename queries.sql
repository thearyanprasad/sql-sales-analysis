-- 1. Total Revenue Generated

SELECT
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM superstore;


-- 2. Total Profit Generated

SELECT
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;


-- 3. Top 10 Products by Sales

SELECT
    Product_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 4. Top 10 Customers by Sales

SELECT
    Customer_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- 5. Sales by Category

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 6. Profit by Category

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 7. Sales by Region

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 8. Regional Performance

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 9. Monthly Sales Trend

SELECT
    MONTH(Order_Date) AS Month_No,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;


-- 10. Monthly Profit Trend

SELECT
    MONTH(Order_Date) AS Month_No,
    ROUND(SUM(Profit),2) AS Monthly_Profit
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;


-- 11. Most Profitable Sub-Category

SELECT
    Sub_Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit DESC
LIMIT 10;


-- 12. Least Profitable Sub-Category

SELECT
    Sub_Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC
LIMIT 10;


-- 13. Average Order Value

SELECT
    ROUND(AVG(Sales),2) AS Average_Order_Value
FROM superstore;


-- 14. Sales by Ship Mode

SELECT
    Ship_Mode,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Ship_Mode
ORDER BY Total_Sales DESC;


-- 15. Top 5 States by Sales

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;


-- 16. Bottom 5 States by Sales

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales ASC
LIMIT 5;


-- 17. Customer Segment Performance

SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- 18. Profit Margin %

SELECT
    ROUND(
        (SUM(Profit) / SUM(Sales)) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM superstore;
