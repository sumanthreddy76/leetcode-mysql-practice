# Write your MySQL query statement below
#intuition ........... use case statements a/c to the given statement and use count function for very case 
#my code 
/*select income from Accounts 
select case as  "Low Salary" if  income <$20000
 case else if as "Average Salary" if income < $20000 or > $50000
 case else " High Salary" if income > $50000 */

 select "Low Salary" as Category ,sum(income < 20000 ) as accounts_count
from Accounts 
union 
select 
"Average Salary"  Category , sum(income >=20000 and income <=50000) as accounts_count
from Accounts
union 
select  "High Salary"  Category ,sum(income >50000) as accounts_count
from Accounts
#seen soln and wrote the query thought it required count but not ....it requires count fn 
