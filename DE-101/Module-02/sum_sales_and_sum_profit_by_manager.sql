-- Сумма продаж и прибыли для менеджеров
SELECT 
    CASE 
        WHEN GROUPING(p.person) = 1 THEN 'Total sum' 
        ELSE p.person 
    END AS person,
    ROUND(SUM(o.sales),2) AS sum_sales,
    ROUND(SUM(o.profit),2) AS profit_sales
FROM 
    orders o 	
    LEFT JOIN people p ON o.region = p.region
GROUP BY 
    ROLLUP(p.person) 
ORDER BY 
    CASE 
        WHEN GROUPING(p.person) = 1 THEN 'zzz' 
        ELSE p.person 
    end,
    SUM(o.profit) DESC

