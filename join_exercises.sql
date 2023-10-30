USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
Join dept_manager on employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE year(dept_manager.to_date) = 9999;


SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
         Join dept_manager on employees.emp_no = dept_manager.emp_no
         JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE year(dept_manager.to_date) = 9999 && employees.gender = 'F';


SELECT titles.title, COUNT(titles.title)
FROM titles
JOIN dept_emp de on titles.emp_no = de.emp_no
JOIN departments dep on de.dept_no = dep.dept_no
WHERE year(titles.to_date) = 9999 AND year(de.to_date)= 9999 AND dep.dept_no = 'd009'
GROUP BY titles.title;

SELECT departments.dept_name AS  'Department Name', CONCAT(employees.first_name, '', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
From departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date LIKE '9999%'
AND employees.salaries.to_date LIKE '9999%'
ORDER BY 'Department Name'




