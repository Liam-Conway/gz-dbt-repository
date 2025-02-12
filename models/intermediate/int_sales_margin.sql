select
   a.orders_id,
   a.date_date,
   b.products_id,
    SUM(CAST(a.revenue AS FLOAT64)) AS revenue,
    SUM(CAST(a.quantity AS INT64)) AS quantity,
    SUM(CAST(b.purchase_price AS FLOAT64)) AS purchase_price,
    SUM(CAST(b.purchase_price AS FLOAT64) * CAST(a.quantity AS INT64)) AS purchase_cost,
    SUM(CAST(a.revenue AS FLOAT64) - (CAST(b.purchase_price AS FLOAT64) * CAST(a.quantity AS INT64))) AS margin
from {{ ref("stg_raw__sales") }} as a
left join {{ ref("stg_raw__product") }} as b on a.products_id = b.products_id
group by a.date_date, a.orders_id, b.products_id