USE employees;

    SHOW tables;
    SELECT * FROM titles;

   SELECT DISTINCT title FROM titles;

    SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name ORDER BY last_name ASC;

    SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY first_name, last_name ORDER BY last_name ASC;

    SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

    SELECT DISTINCT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

    SELECT DISTINCT gender, COUNT(*) FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya' GROUP BY gender;