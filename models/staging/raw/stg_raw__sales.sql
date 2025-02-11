with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        CAST(revenue AS FLOAT64) AS revenue,
        quantity,
        CONCAT(orders_id,"_",pdt_id) AS primary_identifier,
    from source
)

select * from renamed
