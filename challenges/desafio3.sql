SELECT 
	u.name AS pessoa_usuaria,
    COUNT(s.song_id) AS musicas_ouvidas,
    ROUND(SUM(s.song_duration) / 60, 2) AS total_minutos
FROM user AS u
	INNER JOIN play_history AS p ON p.user_id = u.user_id
    INNER JOIN song AS s ON s.song_id = p.song_id
    GROUP BY u.name
    ORDER BY u.name;