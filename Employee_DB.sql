--1 List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.gender,
	s.salary
from employees e
	join salaries s on s.emp_no = e.emp_no

--2 List employees who were hired in 1986.
select emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	hire_date
from employees where hire_date  like '1986%'

--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	dm.emp_no AS "Manager Employee Number",
	e.last_name AS "Manager Last Name",
	e.first_name AS "Manager First Name",
	dm.from_date as "Start Date",
	dm.to_date as "End Date"
from dept_manager dm

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no AS "Employee Name",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
from employees e
	join dept_emp de on e.emp_no = de.emp_no
	join departments d on de.dept_no = d.dept_no

--5 List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees 
	where first_name = 'Hercules'
	and last_name like 'B%'

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
from employees e
	join dept_emp de on e.emp_no = de.emp_no
	join departments d on de.dept_no = d.dept_no
where dept_name like 'Sales'

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
from employees e
	join dept_emp de on e.emp_no = de.emp_no
	join departments d on de.dept_no = d.dept_no
where dept_name like 'Sales' or dept_name like 'Development'

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,
	count (*) "Number of Employees"
from employees
group by last_name
order by "Number of Employees" desc
