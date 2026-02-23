-- Department Wise Average Salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Highest Paid Employee
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Employees With Rating Above 4
SELECT e.name, p.rating
FROM employees e
JOIN performance p
ON e.emp_id = p.emp_id
WHERE p.rating > 4;

-- Salary Ranking Using Window Function
SELECT name,
       department,
       salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employees;
