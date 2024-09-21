--Product Table Queries
select * from Product;
----
SELECT COUNT(*) FROM Product;
--------
SELECT AVG(Product_Price) FROM Product;
-----
SELECT Product_ID, Product_Name, Product_Price
FROM Product
WHERE Product_Price = (SELECT MIN(Product_Price) FROM Product);
-----
SELECT Product_ID, Product_Name, Product_Price
FROM Product
WHERE Product_Price = (SELECT MAX(Product_Price) FROM Product);
------
UPDATE Product
SET Product_Price = 1500.00
WHERE Product_ID = 1001;
-------
SELECT * FROM Product ORDER BY Product_Name ASC;
--------
--Console table queries
select * from Consoles;
-----
SELECT COUNT(*) FROM Consoles;
-------
SELECT MAX(Console_Size) FROM Consoles;
------
SELECT MIN(Console_Size) FROM Consoles;
--------
SELECT AVG(Console_Size) FROM Consoles;
---------
--Accessory table queries
select * from Accessories;
--------
SELECT COUNT(*) FROM Accessories;
--------
--Game table queries
select * from Games;
--------
SELECT COUNT(*) FROM Games;
---------
SELECT AVG(Game_Memory_Space) FROM Games;
--------
--customer table queries
select * from Customer;
-----
SELECT COUNT(*) FROM Customer;
--------
SELECT * FROM Customer WHERE Customer_Gender = 'M';
--------
SELECT * FROM Customer WHERE Customer_Gender = 'F';
--------
SELECT Customer_ID, Customer_Name, Customer_DateofBirth
FROM Customer
WHERE YEAR(NOW()) - YEAR(Customer_DateofBirth) = (
    SELECT MIN(YEAR(NOW()) - YEAR(Customer_DateofBirth))
    FROM Customer
);
------
SELECT MIN(YEAR(NOW()) - YEAR(Customer_DateofBirth)) FROM Customer;
---------
--customer order table queries
select * from Customer_Orders;
-------
SELECT COUNT(*) FROM Customer_Orders;
--------
--product inventory queries
Select * From Product_Inventory;
--------
SELECT COUNT(*) FROM Product_Inventory;
----------
--customer purchases queries
select * from Customer_Purchases;
-------
SELECT COUNT(*) FROM Customer_Purchases;
---------
SELECT C.* FROM Customer C
JOIN Customer_Purchases CP ON C.Customer_ID = CP.Customer_ID;

----------
--Listing customers who made purchases and include their billing details:

SELECT cp.Customer_ID, c.Customer_Name, cp.Shipping_Date, cp.Bill_ID
FROM Customer_Purchases cp
LEFT JOIN Customer_Orders co ON cp.Customer_ID = co.customer
LEFT JOIN Product_Inventory pi ON co.product = pi.Product_ID
LEFT JOIN Product p ON pi.Product_ID = p.Product_ID
LEFT JOIN Customer c ON cp.Customer_ID = c.Customer_ID;
-------------