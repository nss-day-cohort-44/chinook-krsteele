-- Provide a query that shows the most purchased Media Type.


SELECT
    TopMediaType
FROM (
    SELECT
        m.Name TopMediaType,
        COUNT(t.mediaTypeId) Purchases
    FROM
        InvoiceLine l
        JOIN Track t
            ON l.TrackId = t.TrackId
        JOIN MediaType m
            ON t.MediaTypeId = m.MediaTypeId
    GROUP BY 
        t.mediaTypeId
    ORDER BY Purchases DESC
    LIMIT 1
    );