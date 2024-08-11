-- 1) create a report of all state sales, quantity, discount , profit  with following aggregation ,
-- sum , avg, min , max, count	

--state,sales,quantity,discount,profit

 select * from sales
 select * from customer


	 select c.state,sum(s.sales) as"Sum_Sales",avg(s.sales) as "Avg_Sales",count(s.sales) as "Sales_Count", 
sum(s.quantity)as"Sum_Quantity",min(s.discount) as"Min_Discount",max(s.discount)as"Max_Discount",profit
	from sales as s
	inner join customer as c
on s.customer_id=c.customer_id
group by c.state ,s.profit



select city,state,avg(age) as "avg_age" from customer  group by city,state 



select product_name, min(s.sales)/max(s.quantity) as "sales_quantity" from product as P 
	 inner join sales as S
on p.product_id=s.product_id
where order_date between '01-01-2017' and  '31-12-2018'
group by product_name
