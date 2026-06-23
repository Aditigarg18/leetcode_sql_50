# Write your MySQL query statement below
-- id-freinds_count
-- 1-1+1
-- 2-1+2
-- 3-1+1+1
-- 4-1
-- counting of all reqyestor and acceptance id taking sum of that, 
-- printing the sum of them

select id,count(id)as num
from(
select requester_id as id from
RequestAccepted
union all 
select accepter_id as id from 
RequestAccepted) temp
group by id
order by num desc 
limit 1;
