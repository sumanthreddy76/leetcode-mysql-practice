#attempt 2 2.unable to solve it 
delete p1 from Person p1
inner join person p2 
where p1.email = p2.email
and p1.id > p2.id
#group by id having count(id) >1


























# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
#thought it as normal problem but it is a join(self)

/*delete p1
from person p1,person p2
where p1.email=p2.email AND p1.id > p2.id */
#inner join removes the duplicates the nxt expression gives the least value 

