# Write your MySQL query statement below
/*intuition:condition is select emp whose salary is 30K and who has 30K manager id value should be in manager_id but not in employee_id a*/


/*my query
select employee_id 
from Employees
where salary<30000 (
  select manager_id not in employee_id
) as a */

select employee_id
from Employees
where salary<30000 and manager_id not in (
  select employee_id from Employees
)
order by employee_id