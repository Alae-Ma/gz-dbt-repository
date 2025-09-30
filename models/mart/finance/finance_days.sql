SELECT 
date_date, 
COUNT (orders_id) AS Total_number_of_transactions,
Round (SUM (revenue),2) AS Total_revenue,
Round (AVG (revenue),2) AS Average_Basket,
Round (SUM (Operational_margin),2) AS Operational_Margin,
Round (SUM (purchase_cost),2) As Total_purchase_cost,
Round (SUM (shipping_fee),2) AS Total_shipping_fees,
Round (SUM (logcost),2) AS Total_logcost,
Round (SUM (quantity),2) AS Total_quantity_of_products_sold,
from {{ ref('int_orders_operational') }}
Group by date_date 
Order by date_date desc