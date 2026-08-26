SELECT
    order_item_id,
    order_id,
    customer_id,
    product_name,
    quantity,
    unit_price,
    quantity * unit_price AS line_total,
    order_date,
    status,
    order_updated_at,
    item_updated_at
FROM {{ ref('int_order_details') }}