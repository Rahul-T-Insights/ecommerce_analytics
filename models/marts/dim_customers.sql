select
customer_id,
first_name,
last_name,
email,
updated_at
from {{ref('stg_customers')}}