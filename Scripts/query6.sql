select * from sales
where inventoryId IN
(select i.inventoryId
from inventory i 
inner join model m
on i.modelId = m.modelId
where m.EngineType = 'Electric')