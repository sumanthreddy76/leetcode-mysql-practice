# Write your MySQL query statement below
#unable to generate logic 
#thought as subquery (but not)
#should use join statements but didnt(can do without joins as well)

# my approach (select from Weather where temperature on recordDate > temperature on recordDate)

/*select  w1.id
from weather  as w1 
inner join weather as  w2
on w1.id = w2.id
#where datediff(previous ,current =1)
where w1.temperature > w2.temperature and 
datediff(w1.date , w2.date) =1 */

Select w2.Id
From Weather w1 join Weather  w2
on w2.Temperature > w1.temperature and 
DATEDIFF(w2.recordDate, w1.recordDate)=1;

#w2 is for second date if we use w1 in select it will give lowest temp dates
#unable to solve it second time 
#forgot all the soln
