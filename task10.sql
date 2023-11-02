CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Color VARCHAR(50),
    Price DECIMAL(10, 2),
    Quantity INT
);

INSERT INTO Products (ProductID, ProductName, Color, Price, Quantity)
VALUES
    (1, 'Phone A', 'Blue', 700.00, 3),
    (2, 'Phone B', 'Red', 550.00, 4),
    (3, 'Phone C', 'Blue', 800.00, 2),
    (4, 'Phone D', 'Green', 450.00, 5),
    (5, 'Phone E', 'Blue', 600.00, 1);

SELECT * FROM Products
WHERE Price > 600;

SELECT * FROM Products
WHERE Color = 'Blue' AND Quantity > 2;

SELECT ProductName, (Price * Quantity) AS TotalCost FROM Products;

SELECT * FROM Products
WHERE Quantity > 10;
