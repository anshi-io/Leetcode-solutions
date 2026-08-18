# Write your MySQL query statement below
select pro.product_name,
sal.year,
sal.price
from Sales sal 
left join Product pro
on sal.product_id=pro.product_id

