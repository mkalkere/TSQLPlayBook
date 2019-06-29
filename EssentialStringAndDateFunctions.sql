--//Essential String and Date Functions

--//Querying Strings With A Partial Match

SELECT * FROM Artist
WHERE NAME = 'AC/DC'


SELECT * FROM Artist
WHERE NAME LIKE '%AC/DC%'

CREATE INDEX IDX_Artist_Name ON Artist(Name);

--//Partial String Results With substring

SELECT 
	Name
	,SUBSTRING(Name,1,255) + '...'
FROM Artist;

--//Editing String Results With Replace

SELECT
	REPLACE(Title, 'Blood', 'B***d') AS CleanTitle
FROM Album WHERE Title Like '%Blood%';

--//Fixing Bad Data With Trim
SELECT 
	Name
	,LTRIM(Name) AS Fixed
FROM Artist WHERE 
NAME LIKE '%Kiss%';

UPDATE Artist Set Name = LTRIM(Name);

--//Fixing Bad Data With TRIM, LEN, And Data Length
SELECT 
	Name
	,LEN(Name)
FROM Artist 
WHERE DATALENGTH(Name) <> DATALENGTH(RTRIM(Name))

UPDATE Artist SET Name = RTRIM(Name);

--//Slicing Data With Date Part
SELECT
	InvoiceId
	,InvoiceDate
	,Total
	,DATEPART(QUARTER,InvoiceDate) AS [Quarter]
	,DATEPART(MONTH,InvoiceDate) AS [Month]
	,DATEPART(YEAR,InvoiceDate) AS [Year]
	,DATEPART(DAY,InvoiceDate) AS [Day]
FROM Invoice

--//Doing Date Math With Date Diff
SELECT
	InvoiceId
	,InvoiceDate
	,Total
	,DATEPART(QUARTER,InvoiceDate) AS [Quarter]
	,DATEPART(MONTH,InvoiceDate) AS [Month]
	,DATEPART(YEAR,InvoiceDate) AS [Year]
	,DATEPART(DAY,InvoiceDate) AS [Day]
	,DATEDIFF(MONTH,'01/01/2005', InvoiceDate)  AS MonthsInBusiness
FROM Invoice
ORDER BY MonthsInBusiness