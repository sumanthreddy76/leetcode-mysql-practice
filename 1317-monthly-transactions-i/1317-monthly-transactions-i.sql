# Write your MySQL query statement below

/*MY CODE 
select trans_date as (yyyy-mm)(date),amount as trans_total_amount where state='approved',country,count(distinct state) as trans_count ,count(where state='approved'),amount
from Transactions
group by id 
dont know how to select only year and month in full date format
ans substr(date,1,7) or date_format(trans_date,'%y-%m') as month */

select substr(trans_date,1,7) as month,country,count(id) as trans_count,sum(case when state='approved' then 1 else 0 end ) as approved_count, sum(amount) as trans_total_amount,sum(case when state='approved' then amount else 0 end) as approved_total_amount
from Transactions
group by month,country
