# Write your MySQL query statement below
select actor_id ,director_id  from ActorDirector 
#case  actor_id  in didirector_idrector_id
#dont know how to write a value which is in actor _id and in director_id
group by actor_id ,director_id 
having count(*) >= 3