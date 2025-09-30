SELECT orders_id, date_date, 
Round ((margin + shipping_fee - logcost - CAST (ship_cost AS FLOAT64 )),2) AS Operational_margin,
revenue, 
quantity,
purchase_cost,
margin,
shipping_fee,
logcost,
CAST (ship_cost AS FLOAT64 ) AS ship_cost,
from {{ ref('int_orders_margin') }}
join {{ ref('stg_raw__ship') }}
Using (orders_id)
ORDER BY orders_id desc