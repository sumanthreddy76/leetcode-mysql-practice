# Write your MySQL query statement below
#intution should use id%2 != 0 and description is not boring

select id , movie , description , rating
from Cinema 
#group by rating
where id %2 != 0  and description != 'boring' 
order by rating desc
#initially faced difficulties while using order by function 
#ABLE TO SOLVE WITHOUT WATCHING SOLUTION 