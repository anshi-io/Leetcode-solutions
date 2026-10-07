# Write your MySQL query statement below
select pro.product_name,
sal.year,
sal.price
from Sales sal 
join Product pro
on sal.product_id=pro.product_id
group by sal.sale_id,sal.year

