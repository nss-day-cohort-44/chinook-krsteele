-- Provide a query that shows the most 
-- purchased track of 2013.

SELECT
    TopTrack2013,
    MAX(CountedTracks) AS TotalPurchases
FROM (
        SELECT 
            t.Name TopTrack2013,
            COUNT(l.trackId) CountedTracks,
            strftime ('%Y', i.InvoiceDate) AS InvoiceYear
        FROM
            Track t
            JOIN InvoiceLine l
                ON t.TrackId = l.InvoiceLineId
            JOIN Invoice i
                ON i.InvoiceId = l.InvoiceId
        WHERE
            InvoiceYear = '2013'
        GROUP BY
            l.TrackId);
                




