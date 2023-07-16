SELECT
    alb.album_title AS album,
    COUNT(f.song_id) AS  favoritadas
FROM favorite AS f
    INNER JOIN song AS s ON s.song_id = f.song_id
    INNER JOIN album AS alb ON alb.album_id = s.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;