SELECT
    art.name AS artista,
    CASE
		WHEN COUNT(alb.artist_id) >= 5 THEN 'A'
        WHEN COUNT(alb.artist_id) IN(3, 4) THEN 'B'
		WHEN COUNT(alb.artist_id) IN(1, 2) THEN 'C'
        ELSE '-'
	END AS ranking
FROM favorite AS f
    INNER JOIN song AS s ON s.song_id = f.song_id
    INNER JOIN album AS alb ON alb.album_id = s.album_id
    RIGHT JOIN artist AS art ON art.artist_id = alb.artist_id
GROUP BY artista
ORDER BY COUNT(alb.artist_id) DESC, artista;    