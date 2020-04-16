--Use employees_db for inserts below
USE employees_db;
--Insert values into department table
INSERT INTO department(name)
VALUES
("Sales"),
("Mgmt"),
("Human Resources"),
("Accounting"),
("Warehouse"),
("Customer Service/Human relations")
;
--Insert values into role table
INSERT INTO role(title, salary, dept_id)
VALUES
("Regional Manager",100000,1),
("Assistant to the Regional Manager",90000,2),
("Salesperson",80000,2),
("Accountant",70000,3),
("Human Resources rep",60000,4),
("Supplier Relations rep",50000,5),
("Quality Control rep",50000,6),
("Warehouse Manager",500000,7),
("Customer Service rep",50000,8),
("Receptionist",40000,9),
("Temp",20000,10)
;
--Insert values into employee table
INSERT INTO employee(firstName, lastName, role_id, manager_id)
VALUES
("Michael", "Scott", 1, null),
("Jim","Halpert",2,1),
("Dwight","Schrute",3,2),
("Karen","Filippelli",4,2),
("Creed","Bratton",5,1),
("Phyllis","Vance",6,2),
("Stanley","Hudson",7,2),
("Angela","Martin",8,1),
("Oscar","Martinez",9,1),
("Andrew","Bernard",10,2),
("Darryl","Philbin",11,1),
("Meredith","Palmer",12,1),
("Kelly","Kapoor",13,1),
("Kevin","Malone",14,1),
("Toby","Flenderson",15,null),
("Pam","Beesly",16,1),
("Ryan","Howard",17,1)
;
