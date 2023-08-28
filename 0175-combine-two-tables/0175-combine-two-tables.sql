# Write your MySQL query statement below
/*select firstName,lastName,city,state,
from Person  as p left join Address as A
on p.personId = A.personId */



select  firstName,lastName , city,state
 from person as p  LEFT JOIN Address as a
 on p.personId=a.personId 