#attempt 2 
#unable to solve it thought it as aggregate fn 


select name as customers
from Customers 
where Id not in(
  select customerId 
  from Orders
)

# Write your MySQL query statement below
#thinking this as a join (it is but can be done without join )
/*
my solution 
select id ,customerId as b
from Customers,Orders
where Customers.b=Orders.id
*/
/*SELECT name as Customers
from Customers
where id not in (
  select customerid
  from Orders 
) */

/*
getting ambiguos id error 
selecting customers who are in customers tablwe but not in the orders table (other way of doing who never ordered )*/