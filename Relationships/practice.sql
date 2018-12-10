select * from orders
join customers 
on customers.id = orders.customer_id;


select
     first_name,
     last_name, 
     IFNULL(sum(amount), 0) as total_spent
FROM customers  
left JOIN orders
on customer_id = customers.id
group by customer_id
order by total_spent;


select * from customers right join orders on customers.id = orders.customer_id;