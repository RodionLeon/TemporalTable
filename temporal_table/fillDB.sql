Use OfficeExpenses
--1 €нвар€ 2022 г.

-- ¬ставл€ем случайные данные в таблицу Department
DECLARE @DepartmentID int;
SET @DepartmentID = 1;
WHILE @DepartmentID <= 10
BEGIN
  -- —оздаем названи€ отделов от "Department1" до "Department10" со случайными ежемес€чными лимитами
  INSERT INTO Department (DepartmentName, MonthlyLimit)
  VALUES ('Department' + CAST(@DepartmentID AS varchar(2)), CAST(RAND()*1000 AS money));
  SET @DepartmentID = @DepartmentID + 1;
END

-- ¬ставл€ем случайные данные в таблицу Employee
DECLARE @EmployeeID int;
SET @EmployeeID = 1;
WHILE @EmployeeID <= 30
BEGIN
  -- —оздаем сотрудников от "Employee1" до "Employee30", каждый из которых прив€зан к случайному отделу
  INSERT INTO Employee (EmployeeName, DepartmentID)
  VALUES ('Employee' + CAST(@EmployeeID AS varchar(2)), CAST((1 + RAND()* (@DepartmentID - 1)) AS int));
  SET @EmployeeID = @EmployeeID + 1;
END

-- ¬ставл€ем случайные данные в таблицу ExpenseType
DECLARE @ExpenseTypeID int;
SET @ExpenseTypeID = 1;
WHILE @ExpenseTypeID <= 5
BEGIN
  -- —оздаем типы расходов от "ExpenseType1" до "ExpenseType5"
  INSERT INTO ExpenseType (ExpenseTypeName, Description)
  VALUES ('ExpenseType' + CAST(@ExpenseTypeID AS varchar(2)), 'Description' + CAST(@ExpenseTypeID AS varchar(2)));
  SET @ExpenseTypeID = @ExpenseTypeID + 1;
END

-- ¬ставл€ем случайные данные в таблицу Expenses
DECLARE @ExpenseID int;
SET @ExpenseID = 1;
WHILE @ExpenseID <= 100
BEGIN
  -- —оздаем записи о расходах, кажда€ из которых прив€зана к случайному сотруднику и типу расходов, и имеет случайную дату и стоимость
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

