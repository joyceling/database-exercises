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

-- use count(*) and group by to find the number of employees for each gender with those names

SELECT COUNT(*)
FROM employees
WHERE (first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya')
GROUP BY gender;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  OR last_name LIKE '%E';

--   use concat() to combine their first and last name together as a single column
SELECT concat(first_name, " ", last_name)
FROM employees
WHERE last_name LIKE 'E%'
  OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE "%-12-25";

SELECT hire_date, birth_date, first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND (birth_date LIKE "%-12-25")
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 50;

-- born on Christmas & hired in the 90s: how many days have they been working at the company?
SELECT DATEDIFF(CURDATE(), hire_date) AS datediff, hire_date, birth_date, first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND (birth_date LIKE "%-12-25")
ORDER BY birth_date ASC, hire_date DESC;


SELECT *
FROM employees
WHERE last_name
LIKE '%q%';


-- group by first name and last name and count each unique instance... then order by the instances (most common at top (3 occurences), least common at bottom (1 occurence))
SELECT count(*), first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name not like '%qu%'
and gender = 'f'
GROUP BY first_name, last_name
-- having first_name not like '%t%'
ORDER BY count(*) DESC;