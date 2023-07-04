# Write your MySQL query statement below
#intuition .......should join 2 tbles ,avg ,

#my initial solution 
/*select p.project_id , average_years as avg
group by project_id
where avg = round(sum(experience_years),2) / sum(employee_id)
from Project p
inner join Employee e
on Project.employee_id = Employee.employee_id 
#getting runtime error bugs in code */

select p.project_id ,round(sum(e.experience_years)/count(p.project_id) , 2) as average_years 
from project p 
left join Employee e
on p.employee_id = e.employee_id
group by project_id 
#solution fron submissions 
#thought it required a inner join ......but it needs left join 2.unable to use round fn correctly 3.rest of code is right


