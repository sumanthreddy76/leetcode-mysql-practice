# Write your MySQL query statement below
#intuition: asking left tables whose values are missing left join 
#asking whose employee's salary is missing right join 
#so asking for result which is asking  both join in single table should be full outer join 
select T.employee_id
from 
  (select * from Employees left join salaries using(employee_id)
  union 
  select * from Employees right join salaries using(employee_id))
as T
where T.salary is null or T.name is null
order by employee_id;