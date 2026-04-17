select
    supplier_id,
    supplier_name,
    contact_name,
    email,
    city,
    country
from {{ ref('suppliers') }}