with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed

#Rename purchse_price as purchase_price AND cast to a FLOAT64 data type
