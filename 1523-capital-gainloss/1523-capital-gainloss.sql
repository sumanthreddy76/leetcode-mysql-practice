# Write your MySQL query statement below
# sell-buy = + profit ||- loss
#intuition : selecting unique(stock_name) with operation buy using union and also operation with sell union and subtracting sell-buy 

select stock_name,
sum(case when operation = 'sell' then price 
else -price end ) as capital_gain_loss
from Stocks
group by stock_name
#seen soln 2.can use distinct as well
