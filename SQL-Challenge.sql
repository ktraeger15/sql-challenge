--Emp_no, last name, first name, sex, and salary
SELECT emp_no, last_name, first_name, sex, salary
FROM employees
NATURAL JOIN salaries

--first name, last name, hire date for 1986
-- Source for year extract: https://www.sqltutorial.org/sql-date-functions/how-to-extract-year-from-date-in-sql/
SELECT first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986

--department number, department name, employee number, last name, first name
SELECT last_name, first_name, dept_no, dept_name, emp_no
FROM dept_manager 
NATURAL JOIN employees
NATURAL JOIN departments 

--Department number, employee number, last name, first name, dept name
SELECT dept_no, emp_no, last_name, first_name, dept_name
FROM employees
NATURAL JOIN dept_emp
NATURAL JOIN departments

--First name, last name, sex for Hercules and last name B
-- Source for LEFT: https://www.w3schools.com/sql/func_sqlserver_left.asp
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND LEFT(last_name,1) = 'B'

--Sales department employee number, last name, first, name, dept name
SELECT emp_no, last_name, first_name, dept_name
FROM employees
	NATURAL JOIN dept_emp
		NATURAL JOIN departments
		WHERE dept_name = 'Sales'
		
--Frequency counts, desc order, employee last name 
SELECT last_name, COUNT(last_name) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC
	
	





