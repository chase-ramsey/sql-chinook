-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT
  t.Name,
  b.Title,
  m.Name,
  g.Name
FROM Track t, Album b, MediaType m, Genre g
WHERE t.AlbumId = b.AlbumId
AND t.MediaTypeId = m.MediaTypeId
AND t.GenreId = g.GenreId
