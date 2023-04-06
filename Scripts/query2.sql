SELECT
e.firstName,
e.lastName,
e.title
FROM
employee e
LEFT JOIN sales s
ON e.employeeId = s.employeeId
WHERE title = 'Sales Person' 
and s.employeeId is NULL