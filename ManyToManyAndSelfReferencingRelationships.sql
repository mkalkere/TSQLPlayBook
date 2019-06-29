--//Adding Data to a Many to Many
--Create Table Users(
--	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1)
--	,Email VARCHAR(255) NOT NULL UNIQUE
--);

--CREATE TABLE UserRole(
--	UserId INT,
--	RoleID INT,
--	PRIMARY KEY (UserId,RoleId)
--);

--CREATE TABLE Role(
--	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1)
--	,Name VARCHAR(50) NOT NULL UNIQUE
--);

--INSERT INTO Users(Email)
--VALUES('test@test.com');

--INSERT INTO Role(Name)
--VALUES('Administrator');

--INSERT INTO UserRole(UserId,RoleId)
--VALUES(1,1);

SELECT
	Email
	,Name
FROM Users U
LEFT JOIN UserRole UR
	ON UR.UserId = U.Id
LEFT JOIN Role R 
	ON R.Id = UR.RoleId

--//Many To Many Table Constraints


--INSERT INTO Users(Email)
--VALUES('test@test.com');

--INSERT INTO Role(Name)
--VALUES('Administrator');

INSERT INTO UserRole(UserId,RoleId)
VALUES(1,1);

--INSERT INTO UserRole(UserId,RoleId)
--VALUES(1111111,9999999);

SELECT * FROM UserRole;

DROP TABLE UserRole;
DROP TABLE Users;
DROP TABLE Role;

--Create Table Users(
--	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1)
--	,Email VARCHAR(255) NOT NULL UNIQUE
--);

--CREATE TABLE Role(
--	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1)
--	,Name VARCHAR(50) NOT NULL UNIQUE
--);

--CREATE TABLE UserRole(
--	UserId INT REFERENCES Users(Id) ON DELETE CASCADE,
--	RoleID INT REFERENCES Role(Id) ON DELETE CASCADE,
--	PRIMARY KEY (UserId,RoleId)
--);

Delete  FROM Users;
Select * FROM UserRole;

--//Querying a Self-referencing Table with a Subquery
SELECT * FROM Employee;

SELECT 
	FirstName
	,LastName
	,(Select FirstName + ' ' + LastName FROM Employee Bosses Where Employee.ReportsTo = Bosses.EmployeeId) AS Boss
FROM Employee;

--//Querying a Self-referencing Table with a Join

SELECT
	Emp.FirstName
	,Emp.LastName
	,Boss.FirstName + ' ' + Boss.LastName AS Boss
FROM Employee Emp
LEFT JOIN Employee Boss 
	ON Emp.ReportsTo = Boss.EmployeeId