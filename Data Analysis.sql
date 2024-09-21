--1) Finding the average price of products for each console type:

SELECT c.Drive_type, AVG(p.Product_Price) AS AvgPrice
FROM Consoles c
JOIN Product p ON c.Console_ID = p.Product_ID
GROUP BY c.Drive_type;
-------------
--2) Finding the total number of customers who made purchases in each gender category:

SELECT c.Customer_Gender, COUNT(cp.Customer_ID) AS TotalPurchases
FROM Customer_Purchases cp
JOIN Customer c ON cp.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Gender;
-------------
--3)Total Sales for Each Product:
-------
SELECT p.Product_Name, SUM(co.Product_Count) AS Product_Sales
SELECT g.Game_Name, SUM(co.Product_Count) AS Game_Sales
SELECT .Game_Name, SUM(co.Product_Count) AS Game_Sales
FROM Product p
JOIN Customer_Orders co ON p.Product_ID = co.product
GROUP BY p.Product_Name;
--------
--4)Top 5 Customers with Highest Purchase Amount:
--------
SELECT c.Customer_Name, SUM(p.Product_Price * co.Product_Count) AS Total_Purchase_Amount
FROM Customer c
JOIN Customer_Orders co ON c.Customer_ID = co.customer
JOIN Product p ON co.product = p.Product_ID
GROUP BY c.Customer_Name
ORDER BY Total_Purchase_Amount DESC
LIMIT 5;
-------
--5) Average Memory Space of Games Sold:
-----
SELECT AVG(g.Game_Memory_Space) AS Average_Memory_Space
FROM Games g
JOIN Customer_Orders co ON g.Game_ID = co.product
WHERE co.Product_Count > 0;
------
--6) Product Inventory Status:
--------
SELECT p.Product_Name, pi.Product_Count AS Inventory_Count
FROM Product p
JOIN Product_Inventory pi ON p.Product_ID = pi.Product_ID;
------
--7) Average Order Size by Gender:
------
SELECT c.Customer_Gender, AVG(co.Product_Count) AS Avg_Order_Size
FROM Customer_Orders co
JOIN Customer c ON co.customer = c.Customer_ID
GROUP BY c.Customer_Gender;
------
--8) Oldest and Newest Customers:
-----
SELECT c.Customer_Name,
       c.Customer_DateofBirth,
       CASE WHEN c.Customer_DateofBirth = Oldest_Customer THEN 'Oldest Customer'
            WHEN c.Customer_DateofBirth = Newest_Customer THEN 'Newest Customer'
            ELSE NULL
       END AS Customer_Status
FROM Customer c
JOIN (
    SELECT MAX(Customer_DateofBirth) AS Oldest_Customer,
           MIN(Customer_DateofBirth) AS Newest_Customer
    FROM Customer
) AS AgeLimits ON c.Customer_DateofBirth = AgeLimits.Oldest_Customer OR c.Customer_DateofBirth = AgeLimits.Newest_Customer;
-----
--9) Monthly Sales Growth Percentage:
-----
SELECT
    MONTH(Order_Date) AS Month,
    YEAR(Order_Date) AS Year,
    (SUM(p.Product_Price * co.Product_Count) -
     LAG(SUM(p.Product_Price * co.Product_Count), 1, 0) OVER (ORDER BY YEAR(Order_Date), MONTH(Order_Date))) /
    LAG(SUM(p.Product_Price * co.Product_Count), 1, 1) OVER (ORDER BY YEAR(Order_Date), MONTH(Order_Date)) * 100 AS Sales_Growth_Percentage
FROM Customer_Orders co
JOIN Product p ON co.product = p.Product_ID
GROUP BY Year, Month
ORDER BY Year, Month;
-----
--10) Customer Lifetime Value (CLV):
-----
SELECT c.Customer_Name, c.Customer_ID,
       COUNT(co.Order_ID) AS Total_Orders,
       SUM(p.Product_Price * co.Product_Count) AS Total_Spend,
       SUM(p.Product_Price * co.Product_Count) / COUNT(co.Order_ID) AS Avg_Order_Value,
       (COUNT(co.Order_ID) * SUM(p.Product_Price * co.Product_Count)) / COUNT(DISTINCT co.Order_Date) AS CLV
FROM Customer c
LEFT JOIN Customer_Orders co ON c.Customer_ID = co.customer
LEFT JOIN Product p ON co.product = p.Product_ID
GROUP BY c.Customer_Name, c.Customer_ID
ORDER BY CLV DESC;
---------
--11) Top 5 Game Genres by Average Memory Space:
-------
SELECT g.Game_Type, AVG(g.Game_Memory_Space) AS Avg_Memory_Space
FROM Games g
JOIN Customer_Orders co ON g.Game_ID = co.product
WHERE co.Product_Count > 0
GROUP BY g.Game_Type
ORDER BY Avg_Memory_Space DESC
LIMIT 5;
-------
--12) Products Ordered by Male Customers Aged Between 25 and 35:
------
SELECT DISTINCT p.Product_ID, p.Product_Name, p.Product_Description
FROM Product p
WHERE p.Product_ID IN (
    SELECT DISTINCT co.product
    FROM Customer_Orders co
    JOIN Customer c ON co.customer = c.Customer_ID
    WHERE c.Customer_Gender = 'M'
      AND c.Customer_DateofBirth BETWEEN '1990-01-01' AND '2000-01-01'
);
------------
--13) Customers Who Ordered More than One Console:
---------
SELECT c.Customer_ID, c.Customer_Name,
       (SELECT COUNT(DISTINCT co.product)
        FROM Customer_Orders co
        WHERE co.customer = c.Customer_ID AND co.product IN (SELECT Product_ID FROM Product)
       ) AS Count_Consoles_Bought
FROM Customer c
HAVING Count_Consoles_Bought > 1;
---------------
