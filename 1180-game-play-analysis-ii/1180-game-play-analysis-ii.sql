# Write your MySQL query statement below
/*select distinct(player_id)
,first_value(device_id) over (partition by player_id order by event_date)device_id
from 
Activity*/

select player_id,device_id
from Activity
where (player_id,event_date) in (select player_id,min(event_date) from Activity group by player_id)