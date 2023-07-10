#attempt 2 
select email 
from Person
group by email having count(email) >1















































# Write your MySQL query statement below
/*select Email
from Person
group by Email having count(Email)>1 */

#where COUNT(Email)=2
#guessed to use the count fn but syntax is wrong and count  is !=2 it is >1
#used the having fn wrong 