{% snapshot store_snapshot %}

{{
config(
target_schema='RAW',
unique_key='store_id',
strategy='timestamp',
updated_at='open_date'
)
}}

select *
from {{ ref('stg_stores') }}

{% endsnapshot %}