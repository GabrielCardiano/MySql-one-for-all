SELECT 
	art.name AS artista,
    alb.album_title AS album,
    COUNT(f.user_id) AS pessoas_seguidoras
FROM artist AS art
INNER JOIN album AS alb ON alb.artist_id = art.artist_id
INNER JOIN following_artist AS f ON f.artist_id = alb. artist_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;