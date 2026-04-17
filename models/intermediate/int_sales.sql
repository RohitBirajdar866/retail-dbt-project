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