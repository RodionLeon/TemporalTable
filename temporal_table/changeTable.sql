USE OfficeExpenses
--��������� ���� 01.02.2022

INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (1, 1, '����', GETDATE(), 10.5),
       (2, 2, '�����', GETDATE(), 20.7),
       (3, 3, '������� ��������������', GETDATE(), 30.9),
       (4, 4, '�����������', GETDATE(), 40.1),
       (5, 5, '����������� �����������', GETDATE(), 50.3);

DELETE FROM dbo.Employee
WHERE EmployeeID = 5;

DELETE FROM dbo.Employee
WHERE EmployeeID = 8;

DELETE FROM dbo.Employee
WHERE EmployeeID = 9;

UPDATE Expenses
SET Cost = Cost * 1.1 
WHERE  ExpenseID = 55;

UPDATE Employee
SET DepartmentID = 3 
WHERE EmployeeID = 49;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.2 
WHERE  DepartmentID = 8;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.4 
WHERE  DepartmentID = 7;

--��������� ���� 01.03.2022

INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (10, 2, 'Expense2', GETDATE(), 100),
       (12, 3, 'Expense3', GETDATE(), 150),
	   (15, 1, 'Expense4', GETDATE(), 50),
	   (20, 4, 'Expense5', GETDATE(), 70),
	   (25, 5, 'Expense6', GETDATE(), 40);

DELETE FROM dbo.Employee
WHERE EmployeeID = 3;

DELETE FROM dbo.Employee
WHERE EmployeeID = 6;

DELETE FROM dbo.Department
WHERE DepartmentID = 8;

UPDATE Employee
SET EmployeeName = N'�������'
WHERE  EmployeeID = 9;
GO

UPDATE Expenses
SET Cost = Cost + 50
WHERE ExpenseID = 44;

UPDATE Expenses
SET Cost = Cost - 30
WHERE ExpenseID = 46;

UPDATE Department
SET DepartmentName = N'�������'
WHERE DepartmentID = 2;
GO

UPDATE Employee
SET DepartmentID = 4
WHERE  EmployeeID = 15;
GO

--��������� ���� 01.04.2022
INSERT INTO dbo.Department (DepartmentName, MonthlyLimit)
VALUES ('DepartmentName3', 2500),
       ('DepartmentName4', 1900),
	   ('DepartmentName5', 2000),
	   ('DepartmentName6', 1700),
	   ('DepartmentName7', 1600);

DELETE FROM dbo.Expenses
WHERE ExpenseID = 41;

DELETE FROM dbo.Employee
WHERE EmployeeID = 15;

DELETE FROM dbo.Expenses
WHERE ExpenseID = 38;

UPDATE Employee
SET EmployeeName = N'��������'
WHERE  EmployeeID = 48;
GO

UPDATE Expenses
SET Cost = Cost - 400
WHERE ExpenseID = 46;

UPDATE Department
SET DepartmentName = N'�����������'
WHERE DepartmentID = 4;
GO

UPDATE Department
SET MonthlyLimit = 2000
WHERE  DepartmentID = 37;
GO

--��������� ���� 01.05.2022
INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (14, 1, 'Expense2', GETDATE(), 14),
       (2, 2, 'Expense3', GETDATE(), 50),
       (17, 3, 'Expense4', GETDATE(), 44),
       (12, 4, 'Expense5', GETDATE(),27),
       (30, 5, 'Expense6', GETDATE(), 8);

DELETE FROM dbo.Employee
WHERE EmployeeID = 7;

DELETE FROM dbo.Employee
WHERE EmployeeID = 20;

DELETE FROM dbo.Employee
WHERE EmployeeID = 19;

UPDATE Expenses
SET Cost = Cost * 1.7 
WHERE  ExpenseID = 45;

UPDATE Employee
SET DepartmentID = 7 
WHERE EmployeeID = 30;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.1 
WHERE  DepartmentID = 8;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 0.9 
WHERE  DepartmentID = 7;

--��������� ���� 01.06.2022
INSERT INTO dbo.Department (DepartmentName, MonthlyLimit)
VALUES ('DepartmentName3', 4000),
       ('DepartmentName4', 3900),
	   ('DepartmentName5', 1000),
	   ('DepartmentName6', 1500),
	   ('DepartmentName7', 1300);

DELETE FROM dbo.Expenses
WHERE ExpenseID = 35;

DELETE FROM dbo.Employee
WHERE EmployeeID = 14;

DELETE FROM dbo.Expenses
WHERE ExpenseID = 13;

UPDATE Employee
SET EmployeeName = N'�����'
WHERE  EmployeeID = 49;
GO

UPDATE Expenses
SET Cost = Cost - 400
WHERE ExpenseID = 46;

UPDATE Department
SET DepartmentName = N'����� ������'
WHERE DepartmentID = 1;
GO

UPDATE Department
SET MonthlyLimit = 1000
WHERE  DepartmentID = 1;
GO
--��������� ���� 01.07.2022
INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (1, 1, '�������������� ����', GETDATE(), 8),
       (24, 2, '�����', GETDATE(), 13),
       (18, 3, '�������', GETDATE(), 4),
       (22, 4, '������', GETDATE(),44),
       (29, 5, '������', GETDATE(), 3);


UPDATE Expenses
SET Cost = Cost * 3 
WHERE  ExpenseID = 37;

UPDATE Employee
SET DepartmentID = 1 
WHERE EmployeeID = 23;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 2 
WHERE  DepartmentID = 4;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.4 
WHERE  DepartmentID = 5;

--��������� ���� 01.08.2022
INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (16, 2, '������', GETDATE(), 30),
       (2, 3, '������', GETDATE(), 200),
	   (10, 1, '�������', GETDATE(), 5),
	   (13, 4, '�����', GETDATE(), 34),
	   (27, 5, '�����������', GETDATE(), 700);

DELETE FROM dbo.Employee
WHERE EmployeeID = 23;

DELETE FROM dbo.Employee
WHERE EmployeeID = 26;

UPDATE Employee
SET EmployeeName = N'������'
WHERE  EmployeeID = 9;
GO

UPDATE Expenses
SET Cost = Cost + 300
WHERE ExpenseID = 22;

UPDATE Expenses
SET Cost = Cost - 80
WHERE ExpenseID = 56;

UPDATE Department
SET DepartmentName = N'����� ������'
WHERE DepartmentID = 3;
GO

UPDATE Employee
SET DepartmentID = 3
WHERE  EmployeeID = 22;
GO

--��������� ���� 01.09.2022
INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (30, 5, '����', GETDATE(), 228),
       (12, 3, '�����', GETDATE(), 375),
       (18, 2, '������� ��������������', GETDATE(), 36.6),
       (25, 1, '�����������', GETDATE(), 1337),
       (28, 4, '����������� �����������', GETDATE(), 1488);

DELETE FROM dbo.Employee
WHERE EmployeeID = 4;

DELETE FROM dbo.Employee
WHERE EmployeeID = 22;

DELETE FROM dbo.Employee
WHERE EmployeeID = 24;

UPDATE Expenses
SET Cost = Cost * 1.6 
WHERE  ExpenseID = 45;

UPDATE Employee
SET DepartmentID = 4 
WHERE EmployeeID = 25;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 0.8 
WHERE  DepartmentID = 5;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 2 
WHERE  DepartmentID = 9;

--��������� ���� 01.10.2022

INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (18, 2, '������', GETDATE(), 10),
       (24, 2, '�������', GETDATE(), 321),
	   (10, 1, '�����', GETDATE(), 50),
	   (13, 4, '����', GETDATE(), 70),
	   (28, 1, '�����������', GETDATE(), 40);


UPDATE Employee
SET EmployeeName = N'��'
WHERE  EmployeeID = 12;
GO

UPDATE Expenses
SET Cost = Cost + 123
WHERE ExpenseID = 54;

UPDATE Expenses
SET Cost = Cost - 244
WHERE ExpenseID = 6;

UPDATE Department
SET DepartmentName = N'������'
WHERE DepartmentID = 5;
GO

UPDATE Employee
SET DepartmentID = 5
WHERE  EmployeeID = 16;
GO

--��������� ���� 01.11.2022
INSERT INTO dbo.Department (DepartmentName, MonthlyLimit)
VALUES ('���������', 200),
       ('���������', 300),
	   ('���������', 210),
	   ('���������', 310),
	   ('�����������', 400);

DELETE FROM dbo.Expenses
WHERE ExpenseID = 21;

DELETE FROM dbo.Employee
WHERE EmployeeID = 30;

DELETE FROM dbo.Expenses
WHERE ExpenseID = 16;

UPDATE Employee
SET EmployeeName = N'�����'
WHERE  EmployeeID = 27;
GO

UPDATE Expenses
SET Cost = Cost - 4
WHERE ExpenseID = 23;

UPDATE Department
SET DepartmentName = N'���������'
WHERE DepartmentID = 6;
GO

UPDATE Department
SET MonthlyLimit = 5000
WHERE  DepartmentID = 6;
GO

--��������� ���� 01.12.2022
INSERT INTO dbo.Expenses (EmployeeID, ExpenseTypeID, ExpenseName, Date, Cost)
VALUES (11, 5, '������', GETDATE(), 14),
       (12, 5, '������', GETDATE(), 50),
       (13, 1, '�������', GETDATE(), 44),
       (13, 5, '�����������', GETDATE(),27),
       (28, 3, '����', GETDATE(), 8);


UPDATE Expenses
SET Cost = Cost * 1.1 
WHERE  ExpenseID = 17;


UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.6 
WHERE  DepartmentID = 2;

UPDATE Department
SET MonthlyLimit = MonthlyLimit * 1.7 
WHERE  DepartmentID = 5;