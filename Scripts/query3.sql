SELECT emp.employeeId, emp.firstName, emp.lastName, 
min(sls.salesAmount) as LeastExpensiveCar,
max(sls.salesAmount) as MostExpensiveCar
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeId = emp.employeeId
WHERE soldDate >= date('now', 'start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY emp.employeeId;