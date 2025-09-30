SELECT *, Round(quantity*purchase_price,2) As purchase_cost,
Round(revenue-(quantity*purchase_price),2) as margin
from {{ ref('stg_raw__sales') }} join {{ ref('stg_raw__product') }} 
using (products_id)
