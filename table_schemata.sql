-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL
);

--run table to ensure successful creation and import
select * from departments

CREATE TABLE Dept_Emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR   NOT NULL
);

--run table to ensure successful creation and import
select * from dept_emp

CREATE TABLE Dept_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INTEGER   NOT NULL
);

--run table to ensure successful creation and import
select * from dept_manager

CREATE TABLE Employees (
    emp_no INTEGER   NOT NULL,
    emp_title VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_Name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL
);

--run table to ensure successful creation and import
select * from employees

CREATE TABLE Salary (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL
);

--run table to ensure successful creation and import
select * from salary

CREATE TABLE Titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL
);

--run table to ensure successful creation and import
select * from titles


ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salary ADD CONSTRAINT fk_Salary_Emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_title_id FOREIGN KEY(title_id)
REFERENCES Employees (emp_title);

