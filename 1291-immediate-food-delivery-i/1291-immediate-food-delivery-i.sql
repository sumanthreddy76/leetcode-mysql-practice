# Write your MySQL query statement below
select Round(100*avg(order_date =customer_pref_delivery_date),2)
As immediate_percentage
from Delivery;

/*case 
when order_date ==customer_pref_delivery_date  then 'immediate'
else 'scheduled'
from Delivery
group by delivery_id */