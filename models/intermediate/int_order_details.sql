select 
oi.order_item_id,
oi.order_id,
oi.product_name,
oi.quantity,
oi.unit_price,
o.customer_id,
o.order_date,
o.status,
oi.updated_at as order_items_updated_at,
o.updated_at as order_updated_at
from {{ref('stg_order_items')}} oi
left join {{ref('stg_orders')}} o
on oi.order_id= o.order_id