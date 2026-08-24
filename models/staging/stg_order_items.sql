select 
order_item_id,
order_id,
product_name,
quantity,
unit_price,
updated_at
from {{source('raw','order_items')}}

