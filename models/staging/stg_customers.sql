select
    customer_id,
    customer_name,
    email,
    city,
    country,
    join_date
from {{ ref('customers') }}