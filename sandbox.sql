SELECT
    TopTrack2013,
    CountedTracks AS TotalPurchases
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
            InvoiceYear = '2011'
        GROUP BY
            t.Name)
        ORDER BY
            TotalPurchases DESC;