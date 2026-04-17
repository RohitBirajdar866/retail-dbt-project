{{ config(
    materialized='incremental',
    unique_key='order_item_id'
) }}

with source_data as (

select
    oi.order_item_id,
    o.order_id,
    o.order_date,
    o.customer_id,
    o.store_id,
    oi.product_id,
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) as total_amount

from {{ ref('stg_order_items') }} oi

left join {{ ref('stg_orders') }} o
on oi.order_id = o.order_id

{% if is_incremental() %}

where o.order_date > (
    select max(order_date) from {{ this }}
)

{% endif %}

)

select *
from source_data