-- DATA ANALYSIS:

-- 1. List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT a.emp_no "Employee #", a.last_name "Last Name", a.first_name "First Name", a.sex "Sex", b.salary "Salary"
FROM employees a
LEFT JOIN salaries b
ON a.emp_no = b.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name "First Name", last_name "Last Name", hire_date "Hire Date"
FROM employees
WHERE DATE(hire_date) BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT b.dept_no "Department #", c.dept_name "Department", a.emp_no "Employee #", a.last_name "Last Name", a.first_name "First Name"
FROM employees AS a
RIGHT JOIN department_manager AS b
	ON a.emp_no = b.emp_no
INNER JOIN department AS c
	ON b.dept_no = c.dept_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT b.dept_no "Department #", a.emp_no "Employee #", a.last_name "Last Name", a.first_name "First Name",  c.dept_name "Department"
FROM employees AS a
RIGHT JOIN department_employee AS b
	ON a.emp_no = b.emp_no
INNER JOIN department AS c
	ON b.dept_no = c.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name "First Name", last_name "Last Name", sex "Sex"
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT a.emp_no "Employee #", a.last_name "Last Name", a.first_name "First Name"
FROM employees AS a
RIGHT JOIN department_employee AS b
	ON a.emp_no = b.emp_no
INNER JOIN department AS c
	ON b.dept_no = c.dept_no
WHERE c.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT a.emp_no "Employee #", a.last_name "Last Name", a.first_name "First Name", c.dept_name "Department"
FROM employees AS a
RIGHT JOIN department_employee AS b
	ON a.emp_no = b.emp_no
INNER JOIN department AS c
	ON b.dept_no = c.dept_no
WHERE c.dept_name = 'Sales' OR c.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT last_name "Last Name", COUNT(last_name) "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;