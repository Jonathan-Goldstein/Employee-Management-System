CREATE DATABASE employeetrackerDB;

USE employeetrackerDB;

CREATE TABLE department (

	department_id INT NOT NULL AUTO_INCREMENT,
  
    name VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (department_id)
);

CREATE TABLE role (

	role_id INT NOT NULL AUTO_INCREMENT,
  
    title VARCHAR(30) NOT NULL,
    
	salary DECIMAL(10,2) NULL,
  
    department_id INT NULL,
    
    PRIMARY KEY (role_id),
    
    FOREIGN KEY (department_id) REFERENCES department (department_id) ON UPDATE CASCADE ON DELETE SET NULL
    
);

CREATE TABLE employees (
	employee_id INT NOT NULL AUTO_INCREMENT,
  
    first_name VARCHAR(30) NOT NULL,
    
    last_name VARCHAR(30) NOT NULL,
    
    role_id INT NULL, 
    
    manager_id INT NULL,
    
    PRIMARY KEY (employee_id),
    
    FOREIGN KEY (role_id) REFERENCES role (role_id) ON UPDATE CASCADE ON DELETE SET NULL,
    
    FOREIGN KEY (manager_id) REFERENCES employee (employee_id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO department (name)

VALUES ("Partner"), ("Equity Partner"), ("Associate");


INSERT INTO role (title, salary, department_id)

VALUES ("Partner", 500000, 1), ("Equity Partner", 250000, 1), (Mid Level Associate, 125000, 1), ("Associate", 100000, 2), 


INSERT INTO employees (first_name, last_name, role_id)
VALUES ("Jonathan", "Goldstein", 1),("Helen", "Mirren", 3), ("Anothony", "Stuart", 5);
 
INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Chloe", "Moretz", 3, 2), ("Deena", "Goldstein", 5, 4), ("Jared", "McKinnon", 3, 1); 
