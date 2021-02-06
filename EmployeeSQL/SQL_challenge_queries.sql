-- Queries

/* 
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
From employees table: emp_no, last_name, first_name, sex
From salaries table: salary (can be found by linking to emp_no)
*/

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary 
FROM employees AS e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;


/*
2. List first name, last name, and hire date for employees who were hired in 1986.
From employees table: last_name, first_name, hire_date
*/

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/* 
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
From dept_manager: dept_no, emp_no
From departments: dept_name (found by dept_no)
From employees table: last_name, first_name (found by emp_no)
*/

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM dept_manager AS dm
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
INNER JOIN employees as e
ON dm.emp_no = e.emp_no;



/* 
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
From employees table: emp_no, last_name, first_name
<< to get between tables use dept_emp table: obtain dept_no using emp_no
From departments: dept_name (found by dept_no)

this is one of those nested ones
*/

SELECT * FROM employees
SELECT * FROM dept_manager
SELECT * FROM dept_emp


/*
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
From employees table: last_name, first_name, sex
putting restrictions on employees
*/
SELECT * FROM employees

/* 
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
From departments table: dept_name (can use dept_no to identify info in other tables)
From dept_emp table: emp_no (found by dept_no)
From employees table: last_name, first_name (found by emp_no)
*/

SELECT * FROM employees
SELECT * FROM departments
SELECT * FROM dept_emp

/*
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
From departments table: dept_name (can use dept_no to identify info in other tables)
From dept_emp table: emp_no (found by dept_no)
From employees table: last_name, first_name (found by emp_no)
Just now selecting two departments to check and not one
*/

/*
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Use employees table for this.
*/
