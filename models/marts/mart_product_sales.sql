select
    p.product_id,
    p.product_name,
    p.category,
    ps.total_quantity_sold,
    ps.total_revenue

from {{ ref('int_product_sales') }} ps

left join {{ ref('stg_products') }} p
on ps.product_id = p.product_id