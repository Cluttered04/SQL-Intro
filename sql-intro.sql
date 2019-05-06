--Query all of the entries in the Genre table
--SELECT * FROM Genre

--Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Childish Gambino', 2008);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--SELECT ArtistName, Id FROM Artist WHERE ArtistName = 'Childish Gambino';
--SELECT Label, Id FROM Genre WHERE Label = 'Rap';
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Bonfire', 2009, 2196, 'Something Records', 28, 13)


--Using the INSERT statement, add some songs that are on that album to the Song table.

--SELECT Title, Id FROM Album WHERE Title = 'Bonfire'
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Bonfire', 245, '12/20/2008', 13, 28, 23)

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

-- Song.Title, Album.Title, Artist.ArtistName FROM Song LEFT JOIN Album on Album.Id = Song.AlbumId LEFT JOIN Artist on Artist.Id = Song.ArtistId WHERE Album.Title = 'Bonfire' AND Artist.ArtistName = 'Childish Gambino'

--Reminder: Direction of join matters. Try the following statements and see the difference in results.

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT COUNT(Song.Title) FROM Song LEFT JOIN Album on Album.Id = Song.AlbumId GROUP BY Album.Id

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT COUNT(Song.ArtistId) FROM Song LEFT JOIN Artist on Artist.Id = Song.ArtistId GROUP BY Artist.Id

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--SELECT COUNT(Song.GenreId) FROM Song LEFT JOIN Genre on Genre.Id = Song.GenreId GROUP BY Genre.Id

--Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT Album.Title, MAX(Album.AlbumLength) as length FROM Album GROUP BY Album.Title ORDER BY length desc

--Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
--SELECT Song.Title, MAX(Song.SongLength) as length FROM Song GROUP BY Song.Title ORDER BY length desc

--Modify the previous query to also display the title of the album.
--SELECT Song.Title, Album.Title, Max(Song.SongLength) as length FROM Song LEFT JOIN Album on Album.Id = Song.AlbumId GROUP BY Song.Title, Album.Title ORDER BY length desc