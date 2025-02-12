Select 
DATE_TRUNC(date, MONTH) AS datemonth,
sum(ads_margin) as ads_margin,
SUM(ads_cost) as ads_cost,
SUM(ads_impression) as ads_impression,
SUM(ads_clicks) as ads_clicks,
SUM(nb_transactions) as nb_transactions,
sum(total_revenue) as total_revenue,
SUM(avg_basket) as avg_basket,
sum(margin) as margin,
sum(operational_margin) as operational_margin,
sum(total_purchase_cost) as total_purchase_cost,
sum(total_shipping_fee) as total_shipping_fee,
sum(total_shipping_cost) as total_shipping_cost,
sum(total_log_cost) as total_log_cost,
sum(total_quantity_of_products_sold) as total_quantity_of_products_sold
from {{ref("finance_campaigns_day")}}
group by datemonth
order by datemonth desc