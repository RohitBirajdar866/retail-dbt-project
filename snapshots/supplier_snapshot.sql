{% snapshot supplier_snapshot %}

{{
config(
target_schema='RAW',
unique_key='supplier_id',
strategy='timestamp',
updated_at='email'
)
}}

select *
from {{ ref('stg_suppliers') }}

{% endsnapshot %}