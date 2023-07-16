SELECT
	art.name AS artista,
	alb.album_title as album
FROM artist AS art
	INNER JOIN album AS alb ON alb.artist_id = art.artist_id
WHERE art.name = 'Elis Regina'
ORDER BY album;