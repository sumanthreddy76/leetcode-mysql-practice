# Write your MySQL query statement below
/*select date_id ,make_name,
count(distinct(lead_id)) as unique_leads
count(distinct(partner_id)) as unique_partners
FROM DailySales
group by date_id,make_name */

# Write your MySQL query statement below
select date_id, make_name,
count(distinct(lead_id)) as unique_leads, 
count(distinct(partner_id)) as unique_partners
from DailySales
group by date_id, make_name
/* able to write the query but missed to group by date_id and alias statements in 10,11 line */