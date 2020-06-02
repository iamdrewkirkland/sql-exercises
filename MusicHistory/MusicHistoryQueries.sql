--Query all of the entries in the Genre table
--SELECT * FROM Genre

--Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('The Floozies', '2013')

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('Dayglow Funk','4/17/2020','38','Funk Street Records',28,14)

--Using the INSERT statement, add some songs that are on that album to the Song table.

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

--Reminder: Direction of join matters. Try the following statements and see the difference in results.
--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;


--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT album.Title, COUNT(song.Id) AS 'Song Count'
--FROM Album album
--JOIN Song song on song.AlbumId = album.Id
--GROUP BY (album.Title)

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT artist.ArtistName, COUNT(song.Id) AS 'Song Count'
--FROM Artist artist
--JOIN Song song on song.ArtistId = artist.Id
--GROUP BY (artist.ArtistName)

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT genre.[Label], COUNT(song.Id) AS 'Song Count'
--FROM Genre genre
--JOIN Song song on song.GenreId = genre.Id
--GROUP BY (genre.[Label])

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT *
--FROM Album
--WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)



--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT 
--	song.Title AS 'Song',
--	song.SongLength,
--	song.ReleaseDate,
--	album.Title AS 'Album Title',
--	album.[Label] AS 'Record Label'
--FROM Song song
--JOIN Album album ON song.AlbumId = album.Id
--WHERE song.SongLength = (SELECT MAX(SongLength) FROM Song)


--Modify the previous query to also display the title of the album.