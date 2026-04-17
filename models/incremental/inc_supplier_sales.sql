{{ config(
    materialized='table'
) }}

select
p.supplier_id,
sum(s.total_amount) as total_revenue,
sum(s.quantity) as total_quantity,
count(s.order_id) as total_orders

from {{ ref('inc_sales') }} s
left join {{ ref('stg_products') }} p
on s.product_id = p.product_id

group by p.supplier_id