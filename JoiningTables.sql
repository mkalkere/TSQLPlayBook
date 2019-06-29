--//Inner Joins

Select * FROM Invoice;
Select * FROM InvoiceLine;

SELECT 
	I.InvoiceId
	,I.InvoiceDate
	,IL.UnitPrice
	,IL.Quantity
FROM
Invoice I
INNER JOIN InvoiceLine IL
	ON I.InvoiceId = IL.InvoiceId

--//Subqueries
Select * FROM Album;
Select * FROM Artist;

SELECT 
	* 
	,(SELECT COUNT(1) FROM Album A WHERE A.ArtistId = Artist.ArtistId ) AS AlbumCount
FROM Artist
ORDER BY AlbumCount

--//Left and Right Joins

Select
	Name 
	,Title
FROM Artist
INNER JOIN Album
	ON Artist.ArtistId = Album.AlbumId

--//Artist without an Album
Select
	Name 
	,Title
FROM Artist
LEFT JOIN Album
	ON Artist.ArtistId = Album.AlbumId

--//Album without Artist
Select
	Name 
	,Title
FROM Artist
RIGHT JOIN Album
	ON Artist.ArtistId = Album.AlbumId


--//Full Joins
--//Artists without Albums and Albums without Artists

Select
	Name 
	,Title
FROM Artist
FULL JOIN Album
	ON Artist.ArtistId = Album.AlbumId
