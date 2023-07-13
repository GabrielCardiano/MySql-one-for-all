SELECT
    COUNT(DISTINCT art.artist_id) AS artistas,
    COUNT(DISTINCT s.song_id) AS cancoes,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM artist as art
    INNER JOIN album AS alb ON alb.artist_id = art.artist_id
    INNER JOIN song AS s ON s.album_id = alb.album_id;