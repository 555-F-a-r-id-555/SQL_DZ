-- task1
select *
from staff
order by salary;

-- task2
select *
from staff
order by salary desc;

--task3
select *
from staff
order by salary desc
limit 5;

-- task4
select post, 
sum(salary) as total_salary 
from staff
group by post;

--task5
select 
count(*) as employee_count
from staff
where post = 'Рабочий' and age between  24 and 49;

--task6
select 
count(distinct post) as unique_post
from staff;

--task7
SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) < 30;
