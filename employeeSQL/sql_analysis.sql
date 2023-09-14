--Employee Salary
SELECT emp.emp_no, emp.last_name, emp.first_name,emp.sex, sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

--employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between "1986-01-01" and "1986-12-31"

--department managers
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
INNER JOIN departments as d
ON (dm.dpet_no = d.deptno)
INNER JOIN employees as e
ON (dm.emp_no = e.emp_no);

--employees department
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

--employee with the name Hercules and last name begins with B
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = "Hercules"
AND last_name LIKE "B%";

--All emploees in Sales department

--employees in sales and development departments

--How many emploees share the same last name
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) desc;