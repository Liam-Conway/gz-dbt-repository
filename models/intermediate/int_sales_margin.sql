select
   a.orders_id,
   a.date_date,
   b.products_id,
    SUM(a.revenue) AS revenue,
    SUM(a.quantity) AS quantity,
    SUM(b.purchase_price) AS purchase_price,
    SUM((b.purchase_price) * a.quantity) AS purchase_cost,
    SUM((a.revenue) - (b.purchase_price) * a.quantity) AS margin,
    SUM({{ margin_percent ('revenue','purchase_price*quantity',2 )}}) AS margin_percent
from {{ ref("stg_raw__sales") }} as a
left join {{ ref("stg_raw__product") }} as b on a.products_id = b.products_id
group by a.date_date, a.orders_id, b.products_id