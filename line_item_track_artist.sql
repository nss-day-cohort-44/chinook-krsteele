-- Provide a query that includes the purchased 
-- track name AND artist name with each invoice line item.

SELECT 
i.InvoiceLineId,
i.InvoiceId,
i.TrackId,
track.name track_name,
artist.name artist_name,
i.UnitPrice,
i.Quantity
FROM InvoiceLine i, Track, Album, Artist
WHERE i.TrackId = Track.TrackId
    AND Track.albumId = Album.AlbumId
    AND Album.ArtistId = Artist.ArtistId