# Write your MySQL query statement below

#intuition  asking null values or values not having a specific company  from  right table ...so thinking it as a left join thought only has 2 tables 
#my intuition is right it can be done using left join 
#found this query easy 2.seen solution 
select name
 from SalesPerson
 where sales_id not in (
   select sales_id
   from company
   natural join orders 
   where name = 'RED'
 )


#query using joins
/*select S.name 
 from SalesPerson s
 where S.name not in 
 (

 select s.name 
 from SalesPerson s
      LEFT JOIN Orders o on s.sales_id = o.sales_id
          left join Company c on o.com_id = c.com_id
          where c.name ='Red'
 ) */



