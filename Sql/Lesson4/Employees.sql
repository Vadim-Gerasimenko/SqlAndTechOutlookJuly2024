SELECT e.name employee, d.name employee_department,
	em.name chief, de.name chief_department
FROM employee e
LEFT JOIN department d
	ON e.department_id = d.id
LEFT JOIN employee em
	ON e.chief_id = em.id
LEFT JOIN department de
	ON em.department_id = de.id;

SELECT name employee_with_higher_salary_than_chief
FROM employee e
WHERE salary > (SELECT salary
			    FROM employee em
                WHERE e.chief_id = em.id);
                
SELECT name highest_paid_department_employee
FROM employee
WHERE salary IN (SELECT MAX(salary)
				 FROM employee
				 GROUP BY department_id);

SELECT department_id department_id_with_no_more_than_three_employees
FROM employee
GROUP BY department_id
HAVING COUNT(id) <= 3;

SELECT e.name employee_with_chief_from_another_department
FROM employee e
LEFT JOIN employee em
	ON e.chief_id = em.id
WHERE e.department_id <> em.department_id;

SELECT d.name department_with_max_sum_employees_salaries
FROM department d
LEFT JOIN employee e
	ON e.department_id = d.id
GROUP BY d.id
HAVING SUM(e.salary) = (SELECT SUM(em.salary) department_salaries_sum
						FROM department de
						LEFT JOIN employee em
							ON em.department_id = de.id
						GROUP BY de.id
						ORDER BY department_salaries_sum DESC
						LIMIT 1);
	
SELECT name employee_with_third_highest_salary
FROM employee
WHERE salary = (SELECT salary
				FROM employee
				GROUP BY salary
				ORDER BY salary DESC
				LIMIT 2, 1);