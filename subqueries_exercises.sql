use employees;

    SELECT *
    FROM employees
    WHERE hire_date = (SELECT  hire_date FROM employees WHERE emp_no = 101010);

    SELECT DISTINCT title
    FROM titles
    WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

    SELECT *
    FROM employees AS e
    JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    WHERE e.gender = 'F';