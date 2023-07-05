# Write your MySQL query statement below
#myquery
/*select  num from MyNumbers
#count(num) = 1
order by  num desc
limit 1
#soln from submissions */

select max(num) as num from (
  select num from mynumbers group by num having count(num) =1
) as n 

#used subquery for this ..........dont know how to use subwuery  should solve again 


