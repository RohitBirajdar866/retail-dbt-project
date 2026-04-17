select
    product_id,
    product_name,
    category,
    price,
    supplier_id
from {{ ref('products') }}