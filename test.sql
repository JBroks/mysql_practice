/*Select count(Track.Name) as count, Track.MediaTypeId as MediaType from Track
Inner join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
Group by Track.MediaTypeId;

Select COUNT(City) from Customer
Where City = 'Berlin';

Select Track.Name, SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) as sales from InvoiceLine
Inner join Track on InvoiceLine.TrackId = Track.TrackId
Where Track.Name = 'The Woman King';*/

Select Count(Track.Name) as NumTracks, Artist.Name as artist from Track
Inner join Album on Track.AlbumId = Album.AlbumId
Inner join Artist on Album.ArtistId = Artist.ArtistId
Group by Artist.Name
Order by NumTracks desc
Limit 5;