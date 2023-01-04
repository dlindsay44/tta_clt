--Create a database of your own choice.
CREATE DATABASE budgetmotorshop;
USE budgetmotorshop;

/*Create a table which must have a primary key and the correct
datatpes.*/
CREATE TABLE cars (
    CarID int NOT NULL AUTO_INCREMENT,
    CarBrand varchar(255),
    CarName varchar(255),
    EngineSize float,
    Horsepower int,
    Tax int,
    Price int,
    PRIMARY KEY (CarID)
);

--View and show table structures.
SELECT * FROM cars;

--Enter 10 records into table and view them.
INSERT INTO cars (CarBrand, CarName, EngineSize, Horsepower, Tax, Price)
VALUES 
('Fiat', 'Panda', 1.2, 60, 165, 2000),
('Smart', 'Fortwo', 0.7, 61, 30, 2500),
('Honda', 'Jazz', 1.4, 82, 165, 1800),
('Toyota', 'Yaris', 1.3, 86, 165, 1650),
('Toyota', 'Yaris', 1.0, 64, 165, 1400),
('Renault', 'Clio', 1.2, 75, 165, 1500),
('Peugeot', '206', 1.4, 75, 180, 1300),
('Nissan', 'Micra', 1.2, 79, 180, 2200),
('Suzuki', 'Ignis', 1.3, 82, 180, 1000),
('Toyota', 'Corolla', 1.4, 96, 220, 2600);

--Update a record.
UPDATE cars
SET Price = 2400
WHERE CarID = 10;

--Delete a record.
DELETE FROM cars
WHERE CarID = 1;

/*Extension task: create a relational database (2 tables) which is
meaningful and thought-out. In the second table which you have created,
ensure to include the Primary Key of your first table.*/
CREATE TABLE orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    OrderNumber int,
    FirstName varchar(255),
    Surname varchar(255),
    StreetNameAndNumber varchar(255),
    Town varchar(255),
    DateOfPurchase varchar(255),
    CarID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)  
);

SELECT * FROM orders;

INSERT INTO orders (OrderNumber, FirstName, Surname, StreetNameAndNumber, Town, DateOfPurchase, CarID)
VALUES
(52364, 'Alice', 'Smith', '1 Granville Pastures', 'Brighton', '05/01/2022', 4),
(42173, 'Bob', 'Brown', '26 Skellow Hall Gardens', 'Lichfield', '12/01/2022', 7),
(73620, 'Charles', 'Franklin', '32 Hazelwood Lane', 'Stoke-On-Trent', '16/01/2022', 9),
(62012, 'David', 'Jones', '2 Chaucer Rise', 'Chichester', '09/02/2022', 3),
(54061, 'Ethan', 'Yates', '74 Flowerpot Close', 'Truro', '13/02/2022', 6);

