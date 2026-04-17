{% snapshot product_snapshot %}

{{
config(
target_schema='RAW',
unique_key='product_id',
strategy='timestamp',
updated_at='price'
)
}}

select *
from {{ ref('stg_products') }}

{% endsnapshot %}