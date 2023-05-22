-- Продажи и прибыль по сегментам
select 
	case when grouping(category) = 1 then 'Total sum' else segment end as segment, 
	round(sum(sales),2) as sum_sale, 
	round(sum(profit),2) as sum_profit
from orders o 
group by rollup(segment) 
order by case when grouping(segment) = 0 then sum(profit) end desc nulls last,
grouping(segment);
