INSERT INTO employees (first_name, last_name, salary) VALUES ('John', 'Doe', 50000);
INSERT INTO products (name, price) VALUES ('Widget', 10), ('Gadget', 20), ('Doodad', 15);

SELECT * FROM customers;
SELECT first_name, last_name FROM employees;
SELECT * FROM orders WHERE order_date > '2023-01-01';
SELECT customers.name, orders.order_date
FROM customers
JOIN orders ON customers.id = orders.customer_id;

UPDATE products SET price = 25 WHERE id = 101;
UPDATE employees SET salary = salary * 1.10 WHERE department = 'Sales';

DELETE FROM customers WHERE id = 5;
DELETE FROM temp_table;
DELETE FROM orders WHERE order_date < '2023-01-01';
