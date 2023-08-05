# Write your MySQL query statement below
/*select  customer_id as rich_count
from Store
where amount>500

group by customer_id
having amount>500 */

# Write your MySQL query statement below
SELECT COUNT(DISTINCT customer_id) AS rich_count 
FROM Store 
WHERE amount > 500
