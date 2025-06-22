--602. Friend Requests II: Who Has the Most Friends

SELECT id, count(id) as num from
(SELECT requester_id as id from RequestAccepted
union all
select accepter_id as id from RequestAccepted ) temp
group by id
order by num desc
limit 1