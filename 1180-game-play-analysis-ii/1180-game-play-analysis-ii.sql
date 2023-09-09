# Write your MySQL query statement below
/*MY QUERY 
select distinct(player_id),device_id ,first_value(device_id) over (partition by player_id order by event_date)
from Activity
group by device_id 
having min(event_date) */

/*select distinct player_id
, first_value(device_id) over (partition by player_id order by event_date) device_id
from activity */

/*select distinct player_id
,first_value(device_id) over (partition by player_id order by event_date) device_id
from activity */









/*select distinct player_id,first_value(device_id) over(partition by player_id order by event_date) device_id
from activity */

/*select player_id,device_id
 from activity 
 where (player_id,event_date) in (
   select player_id,min(event_date)
   
   from activity
   group by player_id
 ) */

 select distinct(player_id),first_value(device_id) over(partition by player_id order by event_date) device_id
 from activity
 



