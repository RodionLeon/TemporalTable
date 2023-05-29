USE OfficeExpenses

DECLARE @ADayAgo DATETIME2;
SET @ADayAgo = DATEADD(day, -1, sysutcdatetime());

SELECT E.EmployeeName, D.DepartmentName
FROM Employee 
FOR SYSTEM_TIME AS OF @ADayAgo AS E
INNER JOIN Department AS D
 ON E.DepartmentID = D.DepartmentID
  AND D.DepartmentID BETWEEN 1 AND 5;