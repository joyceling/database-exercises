-- use join_test_db;
USE employees;

-- INSERT INTO users (name, email, role_id) VALUES
--   ('joyce', 'joyce@example.com', null),
--   ('jerry', 'jerry@example.com', 2),
--   ('berry', 'berry@example.com', 2),
--   ('kerry', 'kerry@example.com', 2)

-- INNER JOIN
--
-- SELECT users.name, roles.name
-- FROM users
-- JOIN roles ON users.role_id = users.id;
--
-- -- LEFT JOIN
--
-- SELECT users.name, users.email
-- FROM users
-- LEFT JOIN roles ON users.role_id = roles.id;
--
-- -- RIGHT JOIN
--
-- SELECT users.name, users.email
-- FROM users
-- RIGHT JOIN roles ON users.role_id = roles.id;

-- DISPLAYING DEPARTMENT ALONG WITH NAME OF CURRENT MANAGER
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
  ON departments.dept_no = dept_manager.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

-- DISPLAYING ONLY FEMALE MANAGERS
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
  ON departments.dept_no = dept_manager.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE gender = 'F' AND dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

-- DISPLAYING CURRENT TITLES OF EMPLOYEES CURRENTLY WORKING IN CUSTOMER SERVICE
SELECT titles.title AS 'Title', count(*)
FROM titles
JOIN dept_emp
  ON titles.emp_no = dept_emp.emp_no
JOIN departments
  ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date = '9999-01-01'
AND titles.to_date = '9999-01-01'
AND departments.dept_no = 'd009'
GROUP BY title;

-- FIND THE CURRENT SALARY OF ALL CURRENT MANAGERS

SELECT departments.dept_name AS 'Department Name',
CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager
  ON departments.dept_no = dept_manager.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
JOIN salaries
  ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date =  '9999-01-01'
ORDER BY dept_name;