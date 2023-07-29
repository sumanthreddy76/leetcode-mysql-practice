/*# my solution before seing soln 
Write your MySQL query statement below
select round(count(distinct(player_id)),2)
#where count(event_date) =2
group by player_id
#from Activity */


/* seen solution */

/*select round(count(distinct player_id))/(select count(distinct player_id)from Activity),2) as fraction
from Activity
where
(player_id,event_date) in 
'(select player_id ,Date(min(event_date)+1)
from activity
group by player_id */

/*SELECT round(count(distinct player_id)
/(SELECT count(distinct player_id) FROM activity),2) as fraction
FROM activity
WHERE (player_id, event_date) IN
(SELECT player_id, date_add(min(event_date), interval 1 day)
FROM activity
GROUP BY player_id) */
select round(count(distinct player_id)/(select count(distinct player_id) from activity),2) as fraction 
from activity
where (player_id ,event_date) in 
(select player_id,date_add(min(event_date) ,interval 1 day)
from activity
group by player_id)


