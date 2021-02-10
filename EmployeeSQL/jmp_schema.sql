--Create Departments Table
create table departments (
	dept_no VARCHAR(4) not null,
	dept_name VARCHAR(30) not null
);

--Create Dept_Emp Table
create table dept_emp(
	emp_no int not null,
	dept_no VARCHAR(4) not null
);
	
--Create Dept_Manager Table
create table dept_manager(
	dept_no VARCHAR(4) not null,
	emp_no int
);
	
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

--Create Salaries Table
create table salaries(
	emp_no int,
	salary int
);

--Create Titles Table
create table titles(
	title_id VARCHAR(5),
	title VARCHAR(30)
);