# Write your MySQL query statement below
select pro.product_id,
pro.product_name from 
Product pro
left join 
sales sal
on pro.product_id=sal.product_id
group by pro.product_id
having MIN(sal.sale_date) >= '2019-01-01'
   AND MAX(sal.sale_date) <= '2019-03-31';
