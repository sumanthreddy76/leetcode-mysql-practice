# Write your MySQL query statement below

select contest_id ,  round(count( distinct user_id) * 100/(select count(user_id) from users ),2)as percentage 
from Register
group by contest_id

order by percentage desc,contest_id


#copied from submissions 2.dont know how to write order it by contest_id in ascending order.(should write order by contest_id) 3.thought as this problem requires a inner join but dont 4.not able to use round function correctly basically aggregate fns 