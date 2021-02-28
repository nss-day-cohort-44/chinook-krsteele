-- Provide a query that includes the 
-- purchased track name with each invoice line item.

SELECT 
i.InvoiceLineId,
i.InvoiceId,
i.TrackId,
track.name track_name,
i.UnitPrice,
i.Quantity
FROM InvoiceLine i, Track
WHERE i.TrackId = Track.TrackId