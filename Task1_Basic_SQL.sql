Task 1: Basic Data Retrieval & Filtering
 Domain: SQL Developer

 1. Column Selection
SELECT emp_no, first_name, last_name, department
FROM employees;

-- Calculated Column
SELECT emp_no, salary, salary * 1.10 AS new_salary
FROM salaries;

2. Precision Filtering
SELECT emp_no, first_name, salary
FROM employees
WHERE salary > 50000;

SELECT emp_no, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'S%';

-- AND / OR Conditions
SELECT emp_no, department, salary
FROM employees
WHERE department = 'Sales'
AND salary >= 60000;

-- NULL Handling
SELECT emp_no
FROM employees
WHERE manager_id IS NULL;

 3. Sorting
SELECT emp_no, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

 4. Output Control
SELECT emp_no, first_name
FROM employees
LIMIT 10 OFFSET 20;

5. Validation Query
SELECT
  COUNT(*) AS total_filtered,
  MIN(salary) AS min_salary,
  MAX(hire_date) AS latest_hire
FROM employees
WHERE department = 'Sales'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND last_name LIKE 'S%';
