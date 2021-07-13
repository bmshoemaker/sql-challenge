-- Create tables
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;


CREATE TABLE departments (
	dept_no VARCHAR(100), 
	dept_name VARCHAR(100),
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(50),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no SERIAL,	
	emp_title_id  VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(100),
	last_name VARCHAR(100),	
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no SERIAL, 
	dept_no VARCHAR(100),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY	(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(100),
	emp_no SERIAL,
	FOREIGN KEY	(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no SERIAL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Import Data from CSV files

-- View Tables
Select * FROM departments;
Select * FROM titles;
Select * FROM employees;
Select * FROM dept_emp;
Select * FROM dept_manager;
Select * FROM salaries;
