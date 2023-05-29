USE master;

ALTER DATABASE OfficeExpenses SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

DROP DATABASE IF EXISTS OfficeExpenses;

CREATE DATABASE OfficeExpenses
COLLATE Cyrillic_General_CI_AS;

USE OfficeExpenses;

CREATE TABLE [Department] (
	DepartmentID int IDENTITY NOT NULL PRIMARY KEY CLUSTERED (
		[DepartmentID] ASC
	),	
	DepartmentName nvarchar(64) NOT NULL,
	MonthlyLimit money NOT NULL,
	StartDate DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	EndDate DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
	PERIOD FOR SYSTEM_TIME(StartDate, EndDate)
)
WITH(SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.DepartmentHistory))

CREATE TABLE [Employee] (
	EmployeeID int IDENTITY NOT NULL PRIMARY KEY CLUSTERED,
	EmployeeName nvarchar(64) NOT NULL,
	DepartmentID int NOT NULL,
	StartDate DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	EndDate DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
	PERIOD FOR SYSTEM_TIME(StartDate, EndDate)
)
WITH(SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.EmployeeHistory))

CREATE TABLE [ExpenseType] (
	ExpenseTypeID int IDENTITY NOT NULL PRIMARY KEY CLUSTERED,
	ExpenseTypeName nvarchar(64) NOT NULL,
	Description nvarchar(150) NOT NULL,
	StartDate DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	EndDate DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
	PERIOD FOR SYSTEM_TIME(StartDate, EndDate)
)
WITH(SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ExpenseTypeHistory))

CREATE TABLE [Expenses] (
	ExpenseID int IDENTITY NOT NULL PRIMARY KEY CLUSTERED,
	EmployeeID int NOT NULL,
	ExpenseTypeID int NOT NULL,
	ExpenseName nvarchar(64) NOT NULL,
	Date date NOT NULL,
	Cost money NOT NULL,
	StartDate DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
	EndDate DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
	PERIOD FOR SYSTEM_TIME(StartDate, EndDate)
)
WITH(SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.ExpensesHistory))

ALTER TABLE [Employee] 
ADD CONSTRAINT FK_Employee_Department
FOREIGN KEY (DepartmentID)
REFERENCES Department (DepartmentID)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [Expenses] 
ADD CONSTRAINT FK_Expenses_Employee
FOREIGN KEY (EmployeeID)
REFERENCES Employee (EmployeeID)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE [Expenses] 
ADD CONSTRAINT FK_Expenses_ExpenseType
FOREIGN KEY (ExpenseTypeID)
REFERENCES ExpenseType (ExpenseTypeID)
ON UPDATE CASCADE
ON DELETE CASCADE;