CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    RegistrationDate DATE,
    Active INT
);

CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    Genre VARCHAR(50),
    PublicationYear INT,
    TotalCopies INT,
    AvailableCopies INT,
    ShelfLocation VARCHAR(50)
);

CREATE TABLE Checkout (
    CheckoutID INT PRIMARY KEY,
    CheckoutDate DATE,
    ReturnDate DATE,
    BookID INT NOT NULL,
    MemberID INT NOT NULL
);


-- Inserting data into Member table
INSERT INTO Member (MemberID, FirstName, LastName, Email, RegistrationDate, Active)
VALUES
    (1, 'John', 'Doe', 'john.doe@blablabla.com', '2023-01-01', 1),
    (2, 'Jane', 'Smith', 'jane.smith@blablabla.com', '2023-02-15', 1),
    (3, 'Bob', 'Johnson', 'bob.johnson@blablabla.com', '2023-03-20', 1);

-- Inserting data into Author table
INSERT INTO Author (AuthorID, FirstName, LastName)
VALUES
    (1, 'Stephen', 'King'),
    (2, 'J.K.', 'Rowling'),
    (3, 'George', 'Orwell');

-- Inserting data into Book table
INSERT INTO Book (BookID, Title, ISBN, Genre, PublicationYear, TotalCopies, AvailableCopies, ShelfLocation)
VALUES
    (1, 'The Shining', '9780385121675', 'Horror', 1977, 10, 5, 'A1'),
    (2, 'Harry Potter and the Sorcerer''s Stone', '9780747532696', 'Fantasy', 1997, 15, 10, 'B2'),
    (3, '1984', '9780452284234', 'Dystopian', 1949, 8, 3, 'C3');


-- Inserting data into Checkout table
INSERT INTO Checkout (CheckoutID, CheckoutDate, ReturnDate, BookID, MemberID)
VALUES
    (1, '2023-05-01', '2023-04-15', 1, 1),
    (2, '2023-03-18', '2023-03-31', 2, 2),
    (3, '2023-02-20', '2023-03-06', 3, 3);

