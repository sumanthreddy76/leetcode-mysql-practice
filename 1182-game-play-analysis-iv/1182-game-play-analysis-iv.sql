/*# Write your MySQL query statement below
select round(count(distinct(player_id)),2)
#where count(event_date) =2
group by player_id
#from Activity */

SELECT round(count(distinct player_id)
/(SELECT count(distinct player_id) FROM activity),2) as fraction
FROM activity
WHERE (player_id, event_date) IN
(SELECT player_id, date_add(min(event_date), interval 1 day)
FROM activity
GROUP BY player_id)