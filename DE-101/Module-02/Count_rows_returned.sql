SELECT r.returned, COUNT(r.returned) as count_orders  
FROM orders o 
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY r.returned;


-- select  returned  from "returns" r 
