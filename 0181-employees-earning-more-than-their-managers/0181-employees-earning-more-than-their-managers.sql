select e.name as employee
from employee e 
join 
employee m
on m.Id = e.managerid
where e.salary > m.salary
#e is for employee and m for manager 2.unable to use alias 

/*select e2.name as Employee
from employee e1
inner join 
employee e2
on e1.id=e2.managerID
where e1.salary<e2.salary */































# Write your MySQL query statement below
#select name  as Employee
#from employee e1
#inner join employee e2 on e1.id=e2.managerID
#where e1.salary <e2.salary

/*
SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id = e2.managerID
WHERE
e1.salary < e2.salary */

/* thought as inner join but not applied 
takeaways:problem askng on single table or queries related to same table joins should be used */

/*select e2.name as Employee
from employee e1
inner join employee e2
on e1.id=e2.managerID
where e1.salary<e2.salary */


