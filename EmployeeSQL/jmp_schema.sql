--Create Pewlett Hackard database
create database Pewlett_Hackard_db;

--Create Departments Table
create table departments (
	dept_no VARCHAR(4) not null,
	dept_name VARCHAR(30) not null
);
	
--Confirm successful Departments import
select * from departments;

--Create Dept_Emp Table
create table dept_emp(
	emp_no int not null,
	dept_no VARCHAR(4) not null
);

--Confirm successful Dept_Emp import
select * from dept_emp;
	
--Create Dept_Manager Table
create table dept_manager(
	dept_no VARCHAR(4) not null,
	emp_no int
);

--Confirm successful Dept_Manager import
select * from dept_manager;
	
--Create Employees Table
create table employees(
	emp_no int,
	emp_title_id VARCHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date VARCHAR(10)
);

--Confirm successful Employees import
select * from employees;

--Create Salaries Table
create table salaries(
	emp_no int,
	salary int
);

--Cofirm successful Salaries import
select * from salaries;

--Create Titles Table
create table titles(
	title_id VARCHAR(5),
	title VARCHAR(30)
);

--Confirm successful Titles import
select * from titles;