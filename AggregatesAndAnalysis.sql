--// Basic Aggregates

Select * FROM Invoice;

Select 
	SUM(Total) AS AllTimeSales 
	,AVG(Total) AS AvgSale
	,COUNT(Total) AS SalesCount
	,MIN(Total) AS SmallestSale
	,MAX(Total) AS BiggestSale
FROM Invoice;


--//Grouping Results

SELECT
	BillingCountry
	,SUM(Total) AS AllTimeSales
FROM Invoice
GROUP BY BillingCountry

--//A Simple Sales Query
SELECT
	FirstName + ' ' + LastName AS Customer
	,BillingCountry
	,SUM(Total) AS SalesTotal
	,AVG(Total) AS AvgPurchase
FROM Invoice I
INNER JOIN Customer C ON C.CustomerId = I.CustomerId
GROUP BY FirstName,LastName,BillingCountry
ORDER BY BillingCountry,LastName

--//Tangent: Checking Your Numbers

SELECT
	FirstName + ' ' + LastName AS Customer
	,BillingCountry
	,SUM(UnitPrice * Quantity) AS SalesTotal
FROM Invoice I
INNER JOIN Customer C ON C.CustomerId = I.CustomerId
INNER JOIN InvoiceLine IL ON IL.InvoiceId = I.InvoiceId
GROUP BY FirstName,LastName,BillingCountry
ORDER BY BillingCountry,LastName


--//Constraining Aggregate Results
SELECT
	BillingCountry
	,SUM(UnitPrice * Quantity) AS SalesTotal
FROM Invoice I
INNER JOIN InvoiceLine IL ON IL.InvoiceId = I.InvoiceId
WHERE BillingCountry IN ('Germany','Argentina','United Kingdom')
GROUP BY BillingCountry
HAVING SUM(UnitPrice * Quantity) > 40
ORDER BY BillingCountry