with source as (
    select * from {{ source('nom_de_ta_source', 'raw_orders') }}
),

staged as (
    select
        id as order_id,
        customer_id,
        order_date,
        status
        -- adapte les colonnes selon ta table raw_orders
    from source
)

select * from staged