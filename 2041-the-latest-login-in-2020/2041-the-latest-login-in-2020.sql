/*
# Write your MySQL query statement below
select distinct(user_id),
max(time_stamp) as last_stamp
#group by user_id
#where time_stamp = '2020'
from Logins */

select user_id, max(time_stamp) as last_stamp
from logins
where year(time_stamp) = 2020
group by user_id;
/* used cods for date(mistake) and have no idea to use max fn which retrieves recent login date which we required  3.my query vs soln from submissions*/