use employees;

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena','Vidya','Maya');

SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
  AND gender = 'M';

SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
  AND gender = 'M' ORDER BY first_name ASC, last_name ASC;


SELECT last_name FROM employees WHERE last_name LIKE 'E%';

SELECT last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT * FROM employees WHERE birth_date LIKE "%-12-25";

SELECT hire_date, birth_date, first_name, last_name FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND (birth_date LIKE "%-12-25") ORDER BY birth_date ASC, hire_date DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE '%q%' and last_name not like '%qu%';