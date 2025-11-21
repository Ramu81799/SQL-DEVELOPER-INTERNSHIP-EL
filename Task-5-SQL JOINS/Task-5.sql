-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    city TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert values into Customers
INSERT INTO Customers VALUES
(1, 'Ramu', 'Hyderabad'),
(2, 'Arun', 'Bangalore'),
(3, 'Kiran', 'Chennai'),
(4, 'Manoj', 'Mumbai');

-- Insert values into Orders
INSERT INTO Orders VALUES
(101, 1, 500, '2024-01-12'),
(102, 1, 900, '2024-02-05'),
(103, 2, 300, '2024-02-15'),
(104, 3, 700, '2024-03-20');

-- Inner Join
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Left Join
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Right Join (works only in MySQL)
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Full Outer Join (SQLite/MySQL workaround)
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.name, Orders.order_id, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- Cross Join
SELECT Customers.name, Orders.order_id
FROM Customers
CROSS JOIN Orders;

-- Natural Join (works when column names are same)
SELECT *
FROM Customers
NATURAL JOIN Orders;

-- Join more than 2 tables example
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method TEXT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payments VALUES
(1, 101, 'UPI'),
(2, 102, 'Card'),
(3, 103, 'Cash');

SELECT Customers.name, Orders.order_id, Payments.payment_method
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
JOIN Payments ON Orders.order_id = Payments.order_id;

-- Self Join example
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name TEXT,
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'Ramu', NULL),
(2, 'Arun', 1),
(3, 'Kiran', 1),
(4, 'Manoj', 2);

SELECT e.emp_name AS Employee, m.emp_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.emp_id;
