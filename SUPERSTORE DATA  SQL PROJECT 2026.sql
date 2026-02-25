

REATE TABLE superstore (
    Row_ID INT,
    Order_ID TEXT,
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode TEXT,
    Customer_ID TEXT,
    Customer_Name TEXT,
    Segment TEXT,
    Country TEXT,
    City TEXT,
    State TEXT,
    Postal_Code TEXT,
    Region TEXT,
    Product_ID TEXT,
    Category TEXT,
    Sub_Category TEXT,
    Product_Name TEXT,
    Sales NUMERIC,
    Quantity INT,
    Discount NUMERIC,
    Profit NUMERIC
);


SELECT * FROM SUPERTORE



SELECT Category,
ROUND(SUM(Profit)/SUM(Sales)*100,2) profit_margin
FROM superstore
GROUP BY Category;




SELECT Product_Name,
SUM(Profit) AS total_profit
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY total_profit
LIMIT 10


SELECT DATE_TRUNC('month', Order_Date) AS month,
SUM(Sales) AS monthly_sales
FROM superstore
GROUP BY month
ORDER BY month

