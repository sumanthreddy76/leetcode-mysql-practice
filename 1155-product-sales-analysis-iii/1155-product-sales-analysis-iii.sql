# Write your MySQL query statement below
select product_id, year  as first_year , quantity, price
from Sales
where (product_id,year) IN (
  select product_id,min(year) as year from sales group by product_id
)
#intuition ....thought it as a related to join but not ............it is related to sub query 
#getting amgitiy error in inner join (like unable to join commmon column wheather it should be written in select st or in join condition )
