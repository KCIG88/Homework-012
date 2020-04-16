--Drops employees_db if already exists.
DROP DATABASE IF EXISTS employees_db;

-- Create the database employees_db and specified it for use.
CREATE DATABASE employees_db;

USE employees_db;

-- Create the table department.
CREATE TABLE department(
  id int NOT NULL auto_increment key,
  name varchar(30) NOT NULL
);

-- Create the table role.
CREATE TABLE role (
  id int NOT NULL PRIMARY KEY,
  title varchar(30) NOT NULL,
  salary DEC(8,2),
  department_id INT
  
);

-- Create the table employee.
CREATE TABLE employee (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstName varchar(30) NOT NULL,
  lastName varchar(30) NOT NULL,
  role_id INT,
  manager_id INT
);
--display employee table
select *from employee;
--display role table
select *from role;
--display role table
select *from department;