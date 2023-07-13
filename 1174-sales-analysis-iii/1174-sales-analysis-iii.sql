# Write your MySQL query statement below
/*seen the solution 2.facing the issues while using alias selecting  the required column and while joining the 2 tables using the same column getting the ambigious error to overcome this should use alias (which im unable to and joining 2 tables using the using statement not the traditional way 4.when asked between a period of time we can use the min for starting date and max for ending date */


select p.product_id , p.product_name 
from Product p
join sales s
using (product_id)
group by s.product_id
having min(sale_date) >= "2019-01-01"
and max(sale_date) <= " 2019-03-31"


