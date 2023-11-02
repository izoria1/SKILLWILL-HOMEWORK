-- Create the table
CREATE TABLE ExampleTable (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT
);

-- Create an index on the Age column
CREATE INDEX idx_age ON ExampleTable (Age);

-- Get the query execution plan for the query without using the index
EXPLAIN SELECT * FROM ExampleTable WHERE Age = 30;

-- Get the query execution plan for the query using the index
EXPLAIN SELECT * FROM ExampleTable USE INDEX (idx_age) WHERE Age = 30;
