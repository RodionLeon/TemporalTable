Use OfficeExpenses
--1 ������ 2022 �.

-- ��������� ��������� ������ � ������� Department
DECLARE @DepartmentID int;
SET @DepartmentID = 1;
WHILE @DepartmentID <= 10
BEGIN
  -- ������� �������� ������� �� "Department1" �� "Department10" �� ���������� ������������ ��������
  INSERT INTO Department (DepartmentName, MonthlyLimit)
  VALUES ('Department' + CAST(@DepartmentID AS varchar(2)), CAST(RAND()*1000 AS money));
  SET @DepartmentID = @DepartmentID + 1;
END

-- ��������� ��������� ������ � ������� Employee
DECLARE @EmployeeID int;
SET @EmployeeID = 1;
WHILE @EmployeeID <= 30
BEGIN
  -- ������� ����������� �� "Employee1" �� "Employee30", ������ �� ������� �������� � ���������� ������
  INSERT INTO Employee (EmployeeName, DepartmentID)
  VALUES ('Employee' + CAST(@EmployeeID AS varchar(2)), CAST((1 + RAND()* (@DepartmentID - 1)) AS int));
  SET @EmployeeID = @EmployeeID + 1;
END

-- ��������� ��������� ������ � ������� ExpenseType
DECLARE @ExpenseTypeID int;
SET @ExpenseTypeID = 1;
WHILE @ExpenseTypeID <= 5
BEGIN
  -- ������� ���� �������� �� "ExpenseType1" �� "ExpenseType5"
  INSERT INTO ExpenseType (ExpenseTypeName, Description)
  VALUES ('ExpenseType' + CAST(@ExpenseTypeID AS varchar(2)), 'Description' + CAST(@ExpenseTypeID AS varchar(2)));
  SET @ExpenseTypeID = @ExpenseTypeID + 1;
END

-- ��������� ��������� ������ � ������� Expenses
DECLARE @ExpenseID int;
SET @ExpenseID = 1;
WHILE @ExpenseID <= 100
BEGIN
  -- ������� ������ � ��������, ������ �� ������� ��������� � ���������� ���������� � ���� ��������, � ����� ��������� ���� � ���������
  INSERT INTO Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
  VALUES (
    CAST((1 + RAND()* (@EmployeeID - 1)) AS int), 
    CAST((1 + RAND()* (@ExpenseTypeID - 1)) AS int),
    'Expense' + CAST(@ExpenseID AS varchar(3)), 
    DATEADD(day, CAST((RAND() * 365) AS int), GETDATE()), 
    CAST(RAND()*100 AS money)
  );
  SET @ExpenseID = @ExpenseID + 1;
END

SELECT * from Department
SELECT * from Employee
SELECT * from ExpenseType
SELECT * from Expenses

