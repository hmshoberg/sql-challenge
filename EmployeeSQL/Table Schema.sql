CREATE TABLE departments(
	Dept_No VARCHAR (5)Primary Key,
	Dept_Name VARCHAR (30),
	CONSTRAINT fk_dept_manager FOREIGN KEY (Dept_No) REFERENCES dept_manager(Dept_No)
);

CREATE TABLE dept_emp (
	Employee_No VARCHAR (10) Primary Key,
	Dept_No VARCHAR (5),
	CONSTRAINT fk_dept_emp FOREIGN KEY (Dept_No) REFERENCES departments(Dept_No)
);

CREATE TABLE dept_manager(
	Dept_No VARCHAR (5) Primary Key,
	Employee_No VARCHAR (10),
	CONSTRAINT fk_employees FOREIGN KEY (Employee_No) REFERENCES employees(Employee_No)
);

ALTER TABLE employees
ADD CONSTRAINT unique_employee_no UNIQUE (Employee_No);

CREATE TABLE employees (
    Employee_No VARCHAR (10),
    Emp_Title_ID VARCHAR (5),
    Birth_Date DATE,
    First_name VARCHAR (50),
    Last_name VARCHAR (50),
    Sex VARCHAR,
    Hire_Date DATE,
    PRIMARY KEY (Employee_No, Emp_Title_ID),
    CONSTRAINT fk_salaries FOREIGN KEY (Employee_No) REFERENCES Salaries(Employee_No)
);

CREATE TABLE salaries (
	Employee_No VARCHAR (10) Primary Key,
	Salary INTEGER 
);

ALTER TABLE employees
ADD CONSTRAINT unique_emp_title_id UNIQUE (Emp_Title_ID);

CREATE TABLE titles(
	ID INTEGER Primary Key,
	Emp_Title_ID VARCHAR (5),
	CONSTRAINT fk_employees FOREIGN KEY (Emp_Title_ID) REFERENCES employees(Emp_Title_ID)
);