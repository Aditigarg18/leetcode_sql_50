# Write your MySQL query statement below
select Department,Employee,Salary 
from(
select d.name as Department,e.name as Employee ,e.salary as Salary,
dense_rank()over (partition by d.name order by e.salary desc)as ranks
from employee e 
left join department d
on e.departmentId=d.id) temp
where ranks<=3;

or 
  Select d.name as department , e1.name as employee, e1.salary as Salary
From Employee e1 join Department d on e1.DepartmentId = d.Id
Where  3 > (select count(distinct (e2.Salary))
            from  Employee e2
            where e2.Salary > e1.Salary
            and e1.DepartmentId = e2.DepartmentId)
