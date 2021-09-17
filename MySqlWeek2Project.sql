select t.title, count(*) as "Birth Date Count" from titles t
inner join employees e on e.emp_no = t.emp_no 
where e.birth_date >'1965-01-01'
group by t.title;


select t.title, format(avg(s.salary),2) as "Average Salary" from titles t
inner join salaries s on s.emp_no = t.emp_no 
group by t.title limit 20;


select d.dept_name, sum(s.salary) as "Total Salary" from departments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no 
where d.dept_name = 'Marketing' and 
s.from_date >= '1990-01-01' and s.to_date <= '1992-12-31'
group by d.dept_name;



