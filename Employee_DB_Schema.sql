CREATE TABLE employees (emp_no int,
					   birth_date date,
					   first_name varchar,
						last_name varchar,
						gender varchar (1),
						hire_date varchar		
					   );
					   
CREATE TABLE departments (dept_no int,
					   dept_name varchar,
					   );
					   
CREATE TABLE dept_emp (emp_no int,
					   bdept_no int,
					   from_date date,
						to_date date
					   );
					   				
CREATE TABLE salaries (emp_no int,
					   salary int,
					   from_date date,
						to_date date
					   );
								
CREATE TABLE titles (emp_no int,
					   title varchar,
					   from_date date,
						to_date date
					   );
