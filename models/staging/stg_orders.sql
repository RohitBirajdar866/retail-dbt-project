select
    order_id,
    customer_id,
    order_date,
    store_id,
    order_status
from {{ ref('orders') }}