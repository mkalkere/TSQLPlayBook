--//Table
Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,CreatedAt DATETIME NOT NULL DEFAULT GETDATE() 
	,First VARCHAR(25)
	,Last VARCHAR(25)
	,Bio VARCHAR(MAX)
	--,Bio Text
);

--// Inserting Data
INSERT INTO USERS(Email,CreatedAt,First,Last,Bio)
VALUES('test@test.com',GETDATE(),'Test','User','Some User')

--SELECT * FROM Users

--//Bulk Inserts
Insert INTO Users(Email,First,Last)
SELECT Email,FirstName,LastName FROM Chinook.dbo.Customer

--//Updates
Update Users SET 
CreatedAt = '09/23/2014' 
WHERE Id = 1;

--//Updates with Criteria
Update Users SET 
CreatedAt = '09/23/2014' 
WHERE Email = 'luisg@embraer.com.br';

--//Bulk Updates
UPDATE Users SET
CreatedAt = '09/23/2013'
WHERE Id <= 10;

--// Delete
DELETE FROM Users 
WHERE Id = 1;

--//Bulk Deletes
DELETE FROM Users
WHERE ID <= 10;

DELETE FROM Users;