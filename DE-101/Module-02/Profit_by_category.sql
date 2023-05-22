-- Прибыль по категориям
SELECT subcategory, ROUND(SUM(sales),2) AS total_sales
FROM public.orders
GROUP BY subcategory
ORDER BY subcategory, total_sales; 