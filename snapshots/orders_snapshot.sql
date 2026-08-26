{% snapshot orders_snapshot %}

{{
    config(
        target_schema='DBT_RTIWARI',
        unique_key='order_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    order_id,
    customer_id,
    order_date,
    status,
    updated_at
FROM {{ source('raw', 'orders') }}

{% endsnapshot %}