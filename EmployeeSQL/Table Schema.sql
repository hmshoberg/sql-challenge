CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees(
	emp_no VARCHAR(10) PRIMARY KEY,
	emp_title_id VARCHAR(5) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(45),
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE departments (
    dept_no VARCHAR(5) PRIMARY KEY,
    dept_manager_emp_no VARCHAR(10) REFERENCES employees(emp_no),
    dept_name VARCHAR(30)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) REFERENCES departments(dept_no),
    emp_no VARCHAR(10) PRIMARY KEY REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no VARCHAR(10) REFERENCES employees(emp_no),
    dept_no VARCHAR(5),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries(
	emp_no VARCHAR(10) REFERENCES employees(emp_no),
    salary INTEGER
);
