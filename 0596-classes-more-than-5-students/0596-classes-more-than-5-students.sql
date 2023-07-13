# Write your MySQL query statement below #attempt 2

select class from Courses
group by class having count(class)>=5
#yayyyy able to solve it without solution 
/*select class from Courses
group by class  having count(class) >=5 */
