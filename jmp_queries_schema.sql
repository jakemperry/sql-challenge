--Prior to running queries, confirm correct import of CSV files to each table
--confirm import to departments table
SELECT * from departments;

--confirm import to dept_emp table
SELECT * from dept_emp;

--confirm import to dept_manager table
SELECT * from dept_manager;

--confirm import to employees table
SELECT * from employees;

--confirm import to salaries table
SELECT * from salaries;

--confirm import to titles table
SELECT * from titles;

--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
	INNER JOIN salaries as s
		ON e.emp_no = s.emp_no
;

--2. List first name, last name, and hire date for employees who were hired in 1986.
--(Dates are imported as VARCHAR, can use LIKE to find year within a string/VARCHAR value)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d
	INNER JOIN
		dept_emp de
		ON d.dept_no = de.dept_no
	INNER JOIN
		employees e
		ON de.emp_no = e.emp_no
;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN
		dept_emp de
		ON e.emp_no = de.emp_no
	INNER JOIN
		departments d
		ON de.dept_no = d.dept_no
;

--5. List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

--6. List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN
		dept_emp de
		ON e.emp_no = de.emp_no
	INNER JOIN
		departments d
		ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
;

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN
		dept_emp de
		ON e.emp_no = de.emp_no
	INNER JOIN
		departments d
		ON de.dept_no = d.dept_no
	WHERE d.dept_name IN ('Sales','Development')
;

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, count(last_name) as NameCount
FROM employees
GROUP BY last_name
ORDER BY NameCount DESC
;

--Epilogue
SELECT * 
FROM employees
WHERE emp_no = 499942
;
