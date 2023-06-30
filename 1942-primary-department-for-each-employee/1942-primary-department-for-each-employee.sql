# Write your MySQL query statement below
#intuition : may be self join or cross join( not related to join related to union )
#intuition from line 4-7 is right but unable to develop next logic 
select employee_id,department_id
 from Employee
#join Employee.employee_id = 
where primary_flag =  'Y'
union
select employee_id,department_id 
from Employee
where employee_id not in (
  select employee_id 
  from Employee 
  where primary_flag = 'Y'
)
order by employee_id
