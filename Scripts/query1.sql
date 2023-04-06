--Employees and their managers
SELECT
e1.employeeId,
e1.firstName,
e1.lastName,
e1.title,
e2.firstName as managerFirstName,
e2.lastName as managerLastName
FROM
employee e1 join employee e2
on e1.managerId = e2.employeeId
WHERE e2.managerId is not NULL;