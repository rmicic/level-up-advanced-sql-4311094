SELECT emp.employeeId, emp.firstName, emp.lastName, 
count(*) as NumberOfSoldCars
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeId = emp.employeeId
WHERE soldDate >= date('now', 'start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
Having count(*) > 5
order by NumberOfSoldCars DESC;