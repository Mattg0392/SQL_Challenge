
select * from employees
select * from titles
select * from salaries
select * from dept_emp
select * from dept_manager
select * from departments


select salaries.salary, employees.emp_no, employees.last_name, employees.first_name, employees.gender from employees
join salaries on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date from employees
where hire_date between '1987-01-01' and '1988-01-01';

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

select employees.emp_no, employees.last_name, employees.first_name,departments.dept_name fro departments
join dept_emp on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no = employees.emp_no

select employees.first_name, employees.last_name from employees
where first_name = 'Reistad' and last_name like 'P%';

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

select last_name, count(last_name) as "frequency_count" from employees
group by last_name
order by
count(last_name) desc;