# Write your MySQL query statement below
select user_id,product_id
from 
(
    select user_id,product_id,
    RANK() over (partition by user_id order by sum(price *quantity) DESC) as rnk 
    from Sales S  join Product P using(product_id)
    group by user_id,product_id

)a
where rnk=1;















/*# Write your MySQL query statement below
select user_id,product_id
from (select user_id,product_id,
rank() over (partition by user_id order by sum(price * quantity) DESC) as rnk
from Sales S join product P using(product_id)
group by 1,2) a
where rnk=1 */
