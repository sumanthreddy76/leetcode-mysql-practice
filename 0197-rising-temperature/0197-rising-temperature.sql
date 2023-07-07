# Write your MySQL query statement below
#unable to generate logic 
#thought as subquery (but not)
#should use join statements but didnt(can do without joins as well)

# my approach (select from Weather where temperature on recordDate > temperature on recordDate)

select x.id from weather x,weather y
where x.temperature >y.temperature and DATEDIFF(x.recordDate,y.recordDate)=1
