# Write your MySQL query statement below

/*select query_name,
Round(sum(rating)/sum(position),2) as quality
group by query_name
from Queries */

select query_name,
round(avg(rating /position),2) as quality,
round(sum(case when rating<3 then 1 else 0 end)*100/ count(*) ,2) as  poor_query_percentage
from 
queries
group by
query_name

