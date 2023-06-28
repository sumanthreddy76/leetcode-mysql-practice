# Write your MySQL query statement below
#thought it as diff approach than a where condition 

select distinct author_id  as id from Views
where  author_id = viewer_id
order by id;