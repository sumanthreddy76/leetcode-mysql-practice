# Write your MySQL query statement below


select S.product_id,sum(quantity) as total_quantity
from Sales S join Product P 
on  S.product_id = P.product_id
group by S.product_id
