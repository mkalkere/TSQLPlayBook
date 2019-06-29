--//Simple Select
Select * 
FROM Artist;


Select * 
FROM Album;

--//Select Columns
Select * 
FROM Customer;

SELECT 
	FirstName
	,LastName
	,Email
	,Country
FROM Customer

 --//Aliasing Columns
Select 
	FirstName + ' ' + LastName AS [Customer Name]
	,FirstName AS 'First Name'
	,LastName AS [Last Name]
	,Email 
	,Country
FROM Customer

--//Tangent: Naming Things
 -- Avoid having spaces in your column names. You can alias column names to get speces for readability, that;s just fine.