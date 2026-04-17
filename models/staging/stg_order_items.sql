select
    order_item_id,
    order_id,
    product_id,
    quantity,
    price
from {{ ref('order_items') }}