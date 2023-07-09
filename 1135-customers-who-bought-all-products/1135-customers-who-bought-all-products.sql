# Write your MySQL query statement below
#inutuition : query asking related to second table(second table columns should be presented fully ...so thinking it is a right join )

/*select customer_id from Customer
natural join Product 
#on Customer.product_key = Product.product_key */

select customer_id  from Customer
group by customer_id
having count(distinct product_key) = (select count(*) from product);

#thought it was related to join(right) but not .....big mistake it was related to aggregate fns 