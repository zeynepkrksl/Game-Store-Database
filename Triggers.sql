--Trigger Time
-----------
--1
DELIMITER //
CREATE TRIGGER before_game_insert
BEFORE INSERT ON Games
FOR EACH ROW
BEGIN
    IF NEW.Game_Type IS NULL THEN
        SET NEW.Game_Type = 'Unknown';
    END IF;
END;
//
DELIMITER ;
---------

DELETE FROM Games
WHERE Game_ID = 1033;
INSERT INTO Games VALUES(1033, 'Batman: Arkham Knight',8, NULL);
select * from Games;

--2

DELIMITER //

CREATE TRIGGER update_product_inventory
AFTER INSERT ON Customer_Orders
FOR EACH ROW
BEGIN
    UPDATE Product_Inventory
    SET Product_Count = Product_Count - NEW.Product_Count
    WHERE Product_ID = NEW.product;
END;

//

DELIMITER ;
------------testing
INSERT INTO Product_Inventory VALUES(1036, 25);
SELECT * FROM Product_Inventory;
------------
--3
DELIMITER //

CREATE TRIGGER update_product_inventory_delete
AFTER DELETE ON Customer_Orders
FOR EACH ROW
BEGIN
    UPDATE Product_Inventory
    SET Product_Count = Product_Count + OLD.Product_Count
    WHERE Product_ID = OLD.product;
END;

//

DELIMITER ;
------------
--4

DELIMITER //
CREATE TRIGGER after_customer_update
AFTER UPDATE ON Customer
FOR EACH ROW
BEGIN
    UPDATE Customer_Purchases SET Customer_ID = NEW.Customer_ID WHERE Customer_ID = OLD.Customer_ID;
END;
//
DELIMITER ;
--------
--5

DELIMITER //
CREATE TRIGGER before_console_insert
BEFORE INSERT ON Consoles
FOR EACH ROW
BEGIN
    IF NEW.Console_Size > 1000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Console size cannot exceed 1000.';
    END IF;
END;
//
DELIMITER ;
--------
INSERT INTO Consoles VALUES(1050, 'Playstation 5',1500,'version 4. Size user upgradable to 1TB.');
--------
--6 

--Customers who are under age of 18 cant buy Horror games

DELIMITER //

CREATE TRIGGER before_insert_Customer_Orders
BEFORE INSERT ON Customer_Orders
FOR EACH ROW
BEGIN
    DECLARE customer_age INTEGER;

    SELECT TIMESTAMPDIFF(YEAR, Customer_DateofBirth, CURDATE()) INTO customer_age
    FROM Customer
    WHERE Customer_ID = NEW.customer;

  
    IF NEW.product IN (SELECT Game_ID FROM Games WHERE Game_Type = 'Horror') AND customer_age < 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Customers under the age of 18 are not allowed to buy horror games.';
    END IF;
END //

DELIMITER ;
--------testing
INSERT INTO Customer VALUES(134,'James Charles', '1234567890', '1313 Birch St, Town', 'harper.a@email.com', '2012-08-18', 'M');
INSERT INTO Product VALUES(1037,'Games','Phasmaphobia',300.00);
INSERT INTO Games VALUES(1037,'Phasmaphobia',8,'Horror');
INSERT INTO Product_Inventory VALUES(1037, 25);
INSERT INTO Customer_Orders VALUES(247,'2024-05-21',1037,1,134,"ordered");
-------