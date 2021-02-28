-- Provide a query that shows the top 5 most purchased tracks over all

SELECT
    t.Name TopTracks,
    COUNT(l.TrackId) TotalPurchases
FROM
    Track t
    JOIN InvoiceLine l
        ON t.trackId = l.trackId
GROUP BY 
    l.TrackId
ORDER BY TotalPurchases DESC
LIMIT 5;