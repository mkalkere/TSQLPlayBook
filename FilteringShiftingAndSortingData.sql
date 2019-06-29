--//Ordering Results

SELECT
	FirstName + ' ' + LastName AS Name
	,Email
	,Country
	,InvoiceId
	,InvoiceDate
	,Total
FROM Customer C
INNER JOIN Invoice I 
	ON I.CustomerId = C.CustomerId
Where
	Country = 'Brazil'
ORDER BY Total DESC	;

--//Limiting Results
SELECT TOP 10
	FirstName + ' ' + LastName AS Name
	,Email
	,Country
	,InvoiceId
	,InvoiceDate
	,Total
FROM Customer C
INNER JOIN Invoice I 
	ON I.CustomerId = C.CustomerId
Where
	Country = 'Brazil'
ORDER BY Total DESC	;

--//Sequential Ordering
SELECT 
	FirstName + ' ' + LastName AS Name
	,Email
	,Country
	,InvoiceId
	,InvoiceDate
	,Total
FROM Customer C
INNER JOIN Invoice I 
	ON I.CustomerId = C.CustomerId
Where
	Country = 'USA' OR Country = 'Canada'
ORDER BY Country DESC,LastName DESC;

--//Filtering Sets
SELECT 
	FirstName + ' ' + LastName AS Name
	,Email
	,Country
	,InvoiceId
	,InvoiceDate
	,Total
FROM Customer C
INNER JOIN Invoice I 
	ON I.CustomerId = C.CustomerId
Where
	Country IN( 'USA','Canada','Argentina')
	And Total > 5
ORDER BY Country,LastName;

--//Offsetting Results
SELECT 
	FirstName + ' ' + LastName AS Name
	,Email
	,Country
	,InvoiceId
	,InvoiceDate
	,Total
FROM Customer C
INNER JOIN Invoice I 
	ON I.CustomerId = C.CustomerId
WHERE
	Country = 'USA'
ORDER BY Total Desc
OFFSET 1 ROWS;