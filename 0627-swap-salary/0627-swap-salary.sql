# Write your MySQL query statement below
#intuition :use replace keyword (dont know is there any fn like that) or swap
#seen soln  

/*update Salary set sex =
case sex
 when  'm' then 'f'
 else 'm'
 end ; */

 update salary
 set sex =if (sex ='f' , 'm','f');
 #it is a ternary operator when the sex is female then it sets to male else to female 
