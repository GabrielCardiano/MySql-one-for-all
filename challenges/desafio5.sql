SELECT
    s.song_title AS cancao,
    COUNT(p.song_id) AS reproducoes
FROM song AS s
    INNER JOIN play_history AS p ON p.song_id = s.song_id
    GROUP BY cancao
    ORDER BY COUNT(p.song_id) DESC, s.song_title ASC
    LIMIT 2;