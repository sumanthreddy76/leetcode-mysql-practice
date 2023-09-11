# Write your MySQL query statement below
select round(
  ifnull(
  count(distinct R.requester_id,R.accepter_id) /count(distinct F.sender_id,F.send_to_id),0
  ),2
) as accept_rate
from RequestAccepted R,FriendRequest F