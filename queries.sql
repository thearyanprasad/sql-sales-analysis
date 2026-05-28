SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;



SELECT Product_Name,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;



SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Region;


SELECT MONTH(Order_Date) AS Month_No,
ROUND(SUM(Sales),2) AS Monthly_Sales
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;