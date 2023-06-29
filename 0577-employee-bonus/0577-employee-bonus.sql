# Write your MySQL query statement below

select e.name ,b.bonus
 from Employee e
 left  join Bonus  b
 on e.empId = b.empId
 where bonus <1000 or  bonus is null
 #thought it is as a right join initially then changed to left and inner 
 #unable to write query for bonus = null