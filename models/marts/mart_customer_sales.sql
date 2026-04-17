select
    c.customer_id,
    c.customer_name,
    cs.total_orders,
    cs.total_revenue,
    cs.avg_order_value

from {{ ref('int_customer_sales') }} cs

left join {{ ref('stg_customers') }} c
on cs.customer_id = c.customer_id