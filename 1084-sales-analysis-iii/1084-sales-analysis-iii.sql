# Write your MySQL query statement below
select s.product_id, product_name from Sales s 
left join Product p on s.product_id = p.product_id 
group by product_id 
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'