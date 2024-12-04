# Module_09_Challenge : *SQL Challenge*

This repository concerns a SQL database regarding employee data from the 1980s and 1990s for the fictional company Pewlett Hackard. The database was created in PostgreSQL and managed with pgAdmin 4. The schema was designed with QuickDatabaseDiagrams (https://app.quickdatabasediagrams.com/#/).

The file *data_analysis_query.sql* contains SQL queries to answer the following questions:

    1. List the employee number, last name, first name, sex, and salary of each employee.
    2. List the first name, last name, and hire date for the employees who were hired in 1986.
    3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
    4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    6. List each employee in the Sales department, including their employee number, last name, and first name.
    7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

### Relevant Files

SQL files:
+ EmployeeSQL/ERD.png *(PNG image of Entity Relationship Diagram for the database)*
+ EmployeeSQL/schema.sql *(PostgreSQL schema to create database structure)*
+ EmployeeSQL/data_analysis_query.sql *(Queries to answer the above questions)*

CSV files to populate database:
+ data/departments.csv *(Department names, by department number)*
+ data/dept_emp.csv *(Department numbers of all employees, by employee number)*
+ data/dept_manager.csv *(Department numbers of only managers, by employee number)*
+ data/employees.csv *(Employee demographics, by employee number)*
+ data/salaries.csv *(Salaries, by employee number)*
+ data/titles.csv *(Employee titles, by title ID)*
