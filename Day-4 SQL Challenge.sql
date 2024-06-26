create database University;
use University;

create table Departments (
department_id int(10),
department_name varchar(20)
);

insert into Departments (department_id, department_name) values
('101', "HR"),
('102', "IT"),
('103', "Marketing"),
('104', "Finance"),
('105', "Operation");

select * from Departments;

create table Project (
project_id int(10),
project_name varchar (20),
project_lead_id int (10)
);

insert into Project (project_id, project_name, project_lead_id) values
('1', "Project A", '1'),
('2', "Project B", '2'),
('3', "Project C", '3'),
('4', "Project D", '4'),
('5', "Project E", '5');

select * from Project;

create table Employees (
emp_id int (10),
emp_name varchar(20),
emp_department_id int (10)
);

insert into Employees (emp_id, emp_name, emp_department_id) values
('1', "Rahul", '101'),
('2', "Ravi", '102'),
('3', "Dinesh", '101'),
('4', "komal", '102'),
('5', "Rani", '101'),
('6', "Vimla", '103'),
('7', "Pinno", '103'),
('8', "Pinki", '101'),
('9', "Naresh", '102'),
('10', "Nakul", '103'),
('11', "Pant", '102'),
('12', "Akash", '101'),
('13', "Anna", '103'),
('14', "Lucky", '101'),
('15', "Raj", '102'),
('16', "Katariya", '103'),
('17', "Elvish", '102'),
('18', "Pal", '101'),
('19', "Rajat", '103'),
('20', "Ezi", '102'),
('21', "Jonathan", '109'),
('22', "Scout", '107');

select * from Employees;

create table Salaries (
emp_id int(10),
salary_amount int (20)
);

insert into Salaries (emp_id, salary_amount) values
('1', '60000'),
('2', '75000'),
('3', '55000'),
('4', '70000'),
('5', '45000'),
('6', '90000'),
('7', '80000'),
('8', '100000'),
('9', '30000'),
('10', '20000'),
('11', '10000'),
('12', '67000'),
('13', '98000'),
('14', '689000'),
('15', '56000'),
('16', '63000'),
('17', '606000'),
('18', '68000'),
('19', '64000'),
('20', '100000');

select * from Salaries;


-- Problem Statement: Retrieve a list of employees along with their department information showing only those employees who belong to the department?  --
 SELECT emp_id, emp_name, department_name FROM Employees INNER JOIN  Departments ON Employees.emp_department_id = Departments.department_id;
 
 -- Problem Statement: Display list of all employees and their corresponding salary information including those employee who do not have a salary entry?  --
 select Employees.emp_id, emp_name, salary_amount from Employees left join Salaries on employees.emp_id = salaries.emp_id;
 
  -- Problem Statement: Generate the report of all salary records along with the employee information ensuring that all salary entries are include and display null for employee without he salary record? --
  select Employees.emp_id, emp_name, salary_amount from Salaries right join Employees on employees.emp_id = salaries.emp_id;
 
 
