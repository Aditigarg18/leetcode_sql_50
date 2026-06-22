select max(num)as num from(select num as num
from MyNumbers
group by num
having count(num)=1)as new_table;

or
# Write your MySQL query statement below
select max(num)as num from MyNumbers where num in(select num as num
from MyNumbers
group by num
having count(num)=1);
