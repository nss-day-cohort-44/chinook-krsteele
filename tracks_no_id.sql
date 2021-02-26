-- Provide a query that shows all the Tracks, 
-- but displays no IDs. The result should include 
-- the Album name, Media type and Genre.

SELECT
Track.Name Track,
Album.Title Album,
MediaType.Name Media_Type,
Genre.Name Genre
FROM Track, Album, MediaType, Genre
WHERE Track.AlbumId = Album.AlbumId
    AND Track.MediaTypeId = MediaType.MediaTypeId
    AND Track.GenreId = Genre.GenreId