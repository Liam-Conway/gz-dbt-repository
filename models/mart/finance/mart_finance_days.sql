Select 
date_date as date,
count(distinct orders_id) as nb_transactions,
sum(revenue) as total_revenue,
avg(revenue) as avg_basket,
sum(margin) as margin,
sum(operational_margin) as operational_margin,
sum(purchase_cost) as total_purchase_cost,
sum(shipping_fee) as total_shipping_fee,
sum(ship_cost) as total_shipping_cost,
sum(logcost) as total_log_cost,
sum(quantity) as total_quantity_of_products_sold
from {{ref("int_orders_operational")}}
group by date_date
order by date_date desc

