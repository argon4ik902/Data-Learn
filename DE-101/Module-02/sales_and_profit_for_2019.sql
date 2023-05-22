-- Сумма по полю продажи и прибыль за 2019 год

SELECT 
    COALESCE(TO_CHAR(DATE_TRUNC('month', o.order_date), 'Month'), 'Total') as month,
    ROUND(SUM(o.sales),2) as sum_sales, 
    ROUND(SUM(o.profit),2) as sum_profit
FROM orders o 
WHERE EXTRACT(YEAR FROM o.order_date) = 2019
GROUP BY ROLLUP(DATE_TRUNC('month', o.order_date))
ORDER BY DATE_TRUNC('month', o.order_date)