{{ config(
    materialized='table'
) }}

select
product_id,
sum(quantity) as total_quantity_sold,
sum(total_amount) as total_revenue,
count(order_id) as total_orders

from {{ ref('inc_sales') }}

group by product_id