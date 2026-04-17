{% snapshot customer_snapshot %}

{{
config(
target_schema='RAW',
unique_key='customer_id',
strategy='timestamp',
updated_at='join_date'
)
}}

select *
from {{ ref('stg_customers') }}

{% endsnapshot %}