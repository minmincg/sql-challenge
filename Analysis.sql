------Q1
-- queried complete table for reference
-- select * from "Salaries"
SELECT e.emp_no, e.first_name,e.last_name,e.sex,s.salary
FROM "Employees" e
LEFT JOIN "Salaries" s
ON e.emp_no = s.emp_no;

-----Q2

SELECT first_name,last_name,hire_date
FROM "Employees"
WHERE hire_date LIKE '%1986'

-----Q3
-- queried complete table for reference
-- SELECT * FROM "Managers"

SELECT e.first_name, e.last_name,e.emp_no,d.dept_name, d.dept_no
FROM "Employees" e
INNER JOIN "Managers" m on m.emp_no=e.emp_no
INNER JOIN "Departments" d on d.dept_no=m.dept_no

-----Q4
-- queried complete table for reference
-- SELECT * FROM "Dept_employee"
-- we have employees that are working in 2 different departments.

SELECT e.emp_no,e.first_name, e.last_name, de.dept_no ,d.dept_name
FROM "Employees" e
INNER JOIN "Dept_employee" de on de.emp_no=e.emp_no
INNER JOIN "Departments" d on d.dept_no=de.dept_no

-----Q5
-- queried complete table for reference
-- SELECT * FROM "Employees"

SELECT first_name, last_name,sex
FROM "Employees"
WHERE first_name='Hercules' AND last_name LIKE 'B%'

-----Q6

SELECT first_name, last_name, emp_no
FROM "Employees"
WHERE emp_no IN
	(
	SELECT emp_no
	FROM "Dept_employee"
	WHERE dept_no IN
			(
			SELECT dept_no
			FROM "Departments"
			WHERE dept_name='Sales'
			)
	)
-----Q7

select e.first_name,e.last_name,e.emp_no,de.dept_no,d.dept_name
FROM "Employees" e
INNER JOIN "Dept_employee" de 
on e.emp_no=de.emp_no
inner join "Departments" d
on de.dept_no = d.dept_no
Where dept_name = 'Sales' or dept_name='Development' 
order by dept_name 

-----Q8
SELECT last_name,
COUNT(first_name) as "amount of employees"
FROM "Employees"
GROUP BY last_name
order by "amount of employees" DESC
		   
		   
		   
		   