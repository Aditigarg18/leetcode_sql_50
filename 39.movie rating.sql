# Write your MySQL query statement below
(select name as results
from users u
left join movierating mr
on u.user_id=mr.user_id
group by u.user_id
order by count(mr.user_id)desc,u.name
limit 1)
union all
(select title as results
from movies m
left join movierating mr
on m.movie_id=mr.movie_id
where left(created_at,7)='2020-02'
group by m.movie_id
order by avg(mr.rating)desc,m.title
limit 1);
