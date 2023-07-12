# Write your MySQL query statement below
#attempt 2 
#question requirement : sum of tiv_2016 and again 2 conditions 
/* 1.same value in tiv_2015 the only rows that are alligning with the problem condition are row 1 and 4 because row 2 and 3 are having same location (same lot and lon ) 3.found difficulty while understanding the question 3.seen output and table and understood */


select round(sum(tiv_2016), 2)  tiv_2016
from Insurance 
where 
tiv_2015  in (select tiv_2015 from insurance group by tiv_2015 having count(*)>1)
and 
concat(lat,lon) in (select concat(lat,lon) from insurance group by lat,lon having count(*)  =1 );

#where count(tiv_2015) >1 is and distinct(lat,lon) as location 
#unable to generate logic for tiv_2015 are same fo row 1 and 4 

