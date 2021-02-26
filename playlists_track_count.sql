-- Provide a query that shows the total number 
-- of tracks in each playlist. The Playlist name 
-- should be include on the resulant table.

SELECT
Playlist.name playlist,
COUNT(pt.playlistId) track_count
FROM Playlist, PlaylistTrack pt 
WHERE Playlist.PlaylistId = pt.PlaylistId
GROUP BY Playlist.Name;