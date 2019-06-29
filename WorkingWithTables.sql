 --//Creating a Table
  Create Table Users(
	email varchar(50)
 );

 --//Drop the table
 Drop Table Users;

--Primary key uniquely identifies a row in a table

--//Create a table with primary key
Create table Users(
	Id INT PRIMARY KEY
);

--//Primary Keys: GUID
Create Table Users(
	Id UNIQUEIDENTIFIER PRIMARY KEY
);

--//Auto-incrementing Primary Keys
Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1)
	,email VARCHAR(50)
);

Create Table Users(
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID()
	,email VARCHAR(50)
);

--//Tangent : Choosing A Key
Create Table Users(
--Id INT PRIMARY KEY IDENTITY(1,1),
--Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(), --NEWSEQUENTIALID()
--email VARCHAR(50) PRIMARY KEY NOT NULL
);

--//Composite Primary Keys

Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1)
	,email VARCHAR(50) NOT NULL
);


Create Table Users_Roles(
	UserId INT,
	RoleId INT,
	PRIMARY KEY (UserId,RoleId)
);

Create Table Roles(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50)
);

--// Defining Columns
Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,Email VARCHAR(25)
	,CreatedDt DATETIME
	,First VARCHAR(25)
	,Last VARCHAR(25)
	,Bio VARCHAR(MAX)
	--,Bio Text
);

--//Basic Column Constraints
Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,MoneySpent DECIMAL(10,2)
	,CreatedDt DATETIME NOT NULL
	,First VARCHAR(25)
	,Last VARCHAR(25)
	,Bio VARCHAR(MAX)
	--,Bio Text
);

--//Column Defaults
Create Table Users(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,MoneySpent DECIMAL(10,2) DEFAULT 0
	,CreatedDt DATETIME NOT NULL DEFAULT GETDATE() 
	,First VARCHAR(25)
	,Last VARCHAR(25)
	,Bio VARCHAR(MAX)
	--,Bio Text
);

--//Naming Conventions
CREATE TABLE Users(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL
	,Email VARCHAR(255) NOT NULL UNIQUE
	,MoneySpent DECIMAL(10,2) DEFAULT 0
	,CreatedDt DATETIME NOT NULL DEFAULT GETDATE() 
	,First VARCHAR(25)
	,Last VARCHAR(25)
	,Bio VARCHAR(MAX)
	--,Bio Text
);


