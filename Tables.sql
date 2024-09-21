--product table
CREATE TABLE IF NOT EXISTS Product (
    Product_ID INT PRIMARY KEY,
    Product_Description VARCHAR(255) NOT NULL,
    Product_Name VARCHAR(255),
    Product_Price DECIMAL(8 , 4 )
);
--consoles table
CREATE TABLE IF NOT EXISTS Consoles
(
Console_ID INT PRIMARY KEY,
Drive_type varchar(255),
Console_Size INT,
Console_Details varchar(255),
FOREIGN KEY (Console_ID)
    REFERENCES Product (Product_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
--accessory table
CREATE TABLE IF NOT EXISTS Accessories
(
Accessory_ID INT PRIMARY KEY,
Accessory_Name varchar(255),
Accessory_Details varchar(255),
FOREIGN KEY (Accessory_ID)
    REFERENCES Product (Product_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
--games table
CREATE TABLE IF NOT EXISTS Games
(
Game_ID INT PRIMARY KEY,
Game_Name varchar(255),
Game_Memory_Space INT,
Game_Type varchar(50),

FOREIGN KEY (Game_ID)
    REFERENCES Product (Product_ID)
);
--customer table
CREATE TABLE IF NOT EXISTS Customer
(
Customer_ID INT PRIMARY KEY,
Customer_Name varchar(255),
Customer_PhoneNumber varchar(10),
Customer_Address varchar(255),
Customer_eMail varchar(25),
Customer_DateofBirth DATE,
Customer_Gender CHAR(1)
);
--customer orders table
CREATE TABLE IF NOT EXISTS Customer_Orders
(
Order_ID INT PRIMARY KEY,
Order_Date date,
product INT,
Product_Count INT,
customer INT,
Order_Details varchar(255),
FOREIGN KEY (customer)
    REFERENCES Customer (Customer_ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (product)
    REFERENCES Product (Product_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
--product inventory table
CREATE TABLE IF NOT EXISTS Product_Inventory (
Product_ID INT PRIMARY KEY,
Product_Count INT,
FOREIGN KEY (Product_ID)
    REFERENCES Product (Product_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
ALTER TABLE Product_Inventory
ADD constraint CHECK(Product_Count>0) ;

--customer purchases table
CREATE TABLE IF NOT EXISTS Customer_Purchases(
 Purchase_ID INT PRIMARY KEY,
 Shipping_Date DATE,
 Customer_ID INT,
 Bill_ID INT, 
 FOREIGN KEY (Customer_ID)
    REFERENCES Customer (Customer_ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);
