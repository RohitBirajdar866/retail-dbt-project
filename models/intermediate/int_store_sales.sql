select
    store_id,
    count(order_id) as total_orders,
    sum(total_amount) as total_revenue,
    avg(total_amount) as avg_order_value

from {{ ref('int_sales') }}

group by store_id