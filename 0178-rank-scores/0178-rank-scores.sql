# Write your MySQL query statement below

#intuition : should use self join , order by for id as rank 
/*select score, id as rank 
from Scores 
order by rank */

SELECT score, dense_rank() OVER(ORDER BY score DESC) as "rank"
FROM Scores
#dont know about dense rank or rank 2.seen soln 
