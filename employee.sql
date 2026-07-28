CREATE DATABASE CompanyDB1;

USE CompanyDB1;

CREATE TABLE Employee(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) CHECK(salary>=15000),
    department VARCHAR(30)
);

SHOW TABLES;

DESC Employee;

INSERT INTO Employee(emp_name,email,salary,department)
VALUES
('Rahul','rahul@gmail.com',30000,'IT'),
('Priya','priya@gmail.com',35000,'HR'),
('Aman','aman@gmail.com',40000,'Finance'),
('Neha','neha@gmail.com',28000,'IT'),
('Rohit','rohit@gmail.com',22000,'Sales'),
('Anjali','anjali@gmail.com',32000,'HR'),
('Vikas','vikas@gmail.com',45000,'Marketing'),
('Sneha','sneha@gmail.com',38000,'Finance'),
('Deepak','deepak@gmail.com',26000,'IT'),
('Pooja','pooja@gmail.com',36000,'HR');

SELECT * FROM Employee;

INSERT INTO Employee(emp_name,email,salary,department)
VALUES('Karan','karan@gmail.com',10000,'HR');

INSERT INTO Employee(emp_name,email,salary,department)
VALUES('Mohit','rahul@gmail.com',25000,'Sales');

SELECT * FROM Employee;

UPDATE Employee
SET salary = salary + 5000;

SELECT * FROM Employee;

UPDATE Employee
SET department='Sales'
WHERE emp_id=5;

SELECT * FROM Employee;

UPDATE Employee
SET email='aman123@gmail.com',
salary=50000
WHERE emp_id=3;

SELECT * FROM Employee;

UPDATE Employee
SET email='rahul@gmail.com'
WHERE emp_id=2;

UPDATE Employee
SET salary=12000
WHERE emp_id=1;

SELECT * FROM Employee;

DELETE FROM Employee
WHERE emp_id=4;

SELECT * FROM Employee;

DELETE FROM Employee
WHERE department='HR';

SELECT * FROM Employee;

DELETE FROM Employee;

SELECT * FROM Employee;