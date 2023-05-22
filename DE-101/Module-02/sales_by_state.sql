-- продажи по штатам
SELECT state, 
	ROUND(SUM(sales),2) AS sum_sales, 
	ROUND(SUM(profit),2) AS sum_profit
FROM orders o 
GROUP BY state 
ORDER BY sum_profit;