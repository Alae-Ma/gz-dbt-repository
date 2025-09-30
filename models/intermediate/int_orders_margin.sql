SELECT orders_id, MAX (date_date) as date_date,
Round (SUM (revenue),2) as revenue, 
SUM (quantity) as quantity,
Round (SUM (purchase_cost),2) as purchase_cost,
Round (SUM (margin),2) as margin
from {{ ref('int_sales_margin') }}
Group by orders_id
Order by orders_id desc