-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.

SELECT
  p.PlaylistId,
  p.Name,
  COUNT(pt.TrackId) 'No. of tracks'
FROM Playlist p, PlaylistTrack pt
WHERE p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId
