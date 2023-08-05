# Write your MySQL query statement below

/*select teacher_id,subject_id
from Teacher T
self join 
on */
select teacher_id,count(distinct subject_id) as cnt from Teacher
group by teacher_id
