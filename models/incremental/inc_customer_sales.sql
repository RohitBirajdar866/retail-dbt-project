{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

select
customer_id,
count(order_id) as total_orders,
sum(total_amount) as total_revenue,
avg(total_amount) as avg_order_value

from {{ ref('inc_sales') }}

group by customer_id