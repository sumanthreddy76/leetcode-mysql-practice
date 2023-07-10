# Write your MySQL query statement below
#intuition: join the tables om id column then find the max salary in speicific dept

/*select d.name as Department, e.name as Employee ,e.salary as Salary 
from Employee e
join Department d
on e.Departmentid = d.id
where (e.DepartmentId, e.salary ) in
(select departmentId , max(salary) 
from Employee
group by departmentId)
#not getting intrest to solve ,very important problem */

select d.name as department ,e.name as Employee ,e.salary as salary
from employee e
join department d
on e.departmentid = d.id
where(e.departmentid , e.salary) in (
  select departmentid ,max(salary)
  from employee
  group by departmentid
)
/*facing difficulties while solving 2.unable to find which  columns to be selected and use the alias */ 

