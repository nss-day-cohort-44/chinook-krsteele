-- Provide a query that shows the top 3 best selling artists.

SELECT
    Artist.Name TopArtists,
    COUNT(artist.Name) Sales
FROM 
    InvoiceLine l
    JOIN Track t
        ON l.trackId = t.TrackId
    JOIN Album
        ON t.AlbumId = Album.AlbumId
    JOIN Artist
        ON Album.ArtistId = Artist.ArtistId
GROUP BY 
    artist.Name
ORDER BY Sales DESC
LIMIT 3;