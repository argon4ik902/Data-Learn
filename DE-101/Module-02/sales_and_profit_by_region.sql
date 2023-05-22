SELECT 
	CASE WHEN GROUPING(region) = 1 THEN 'Total result' ELSE region END AS region,
	ROUND(SUM(sales),2) AS sum_sales,
	ROUND(SUM(profit),2) AS sum_profit
FROM orders o
GROUP BY ROLLUP(region)
ORDER BY 
  CASE WHEN GROUPING(region) = 0 THEN SUM(profit) END DESC NULLS LAST,
  GROUPING(region);