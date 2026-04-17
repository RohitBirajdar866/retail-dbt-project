select
    sp.supplier_id,
    s.supplier_name,
    sp.total_orders,
    sp.total_revenue

from {{ ref('int_supplier_sales') }} sp

left join {{ ref('stg_suppliers') }} s
on sp.supplier_id = s.supplier_id