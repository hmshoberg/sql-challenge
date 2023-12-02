-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/R2ORgR
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Titles" (
    "ID" INTEGER   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Departments" (
    "Dept_No" INTEGER   NOT NULL,
    "Dept_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Dept_Employee" (
    "Employee_No" VARCHAR   NOT NULL,
    "Dept_No" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_Employee" PRIMARY KEY (
        "Employee_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "Dept_No" VARCHAR   NOT NULL,
    "Employee_No" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employees" (
    "Employee_No" VARCHAR   NOT NULL,
    "Emp_Title_ID" VARCHAR   NOT NULL,
    "Birth_Date" VARCHAR   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_Date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_No"
     )
);

CREATE TABLE "Salaries" (
    "Employee_No" VARCHAR   NOT NULL,
    "Salary" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Employee_No"
     )
);

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_ID" FOREIGN KEY("ID")
REFERENCES "Employees" ("Emp_Title_ID");

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Dept_Manager" ("Dept_No");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Dept_Manager" ("Employee_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Employees" ("Employee_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Salaries" ("Employee_No");

