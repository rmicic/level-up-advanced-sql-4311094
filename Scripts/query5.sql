select strftime('%Y', soldDate) as YearofSales,
format("$%.2f",sum(salesAmount)) as YearlySales
from sales
group by 1
order by 1 DESC