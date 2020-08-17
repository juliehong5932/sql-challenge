--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees e 
where e.hire_date between '1985-12-31' and '1987-01-01'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from department d
join dept_manager m
on d.dept_no = m.dept_no
join employees e
on m.emp_no = e.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join department d
on de.dept_no = d.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees e
where e.first_name = 'Hercules'
and e.last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join department d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join department d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' 
or d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name, count(e.last_name) 
from employees e
group by e.last_name
order by count(e.last_name) desc

