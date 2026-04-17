select
    store_id,
    store_name,
    city,
    state,
    country,
    open_date
from {{ ref('stores') }}