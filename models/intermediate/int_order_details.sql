SELECT
    oi.order_item_id,
    oi.order_id,
    o.customer_id,
    oi.product_name,
    oi.quantity,
    oi.unit_price,
    o.order_date,
    o.status,
    o.updated_at AS order_updated_at,
    oi.updated_at AS item_updated_at
FROM {{ ref('stg_order_items') }} oi
LEFT JOIN {{ ref('stg_orders') }} o
    ON oi.order_id = o.order_id