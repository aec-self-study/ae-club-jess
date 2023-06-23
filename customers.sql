select min(o.created_at) as first_order_at
, count(*) as number_orders
, c.name 
from `analytics-engineers-club.coffee_shop.customers` as c
left join `analytics-engineers-club.coffee_shop.orders` as o 
  on o.customer_id = c.id
group by c.name
order by first_order_at 
limit 5;
