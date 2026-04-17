select
    s.store_id,
    s.store_name,
    s.city,
    ss.total_orders,
    ss.total_revenue

from {{ ref('int_store_sales') }} ss

left join {{ ref('stg_stores') }} s
on ss.store_id = s.store_id