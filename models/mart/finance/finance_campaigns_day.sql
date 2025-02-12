
Select
date,
(f.operational_margin - c.ads_cost) AS ads_margin,
c.ads_cost,
c.ads_impression,
c.ads_clicks,
f.nb_transactions,
f.total_revenue,
f.avg_basket,
f.margin,
f.operational_margin,
f.total_purchase_cost,
f.total_shipping_fee,
f.total_shipping_cost,
f.total_log_cost,
f.total_quantity_of_products_sold
from {{ref("mart_finance_days")}} f
Join {{ref("int_campaigns_day")}} c
ON date = date_date