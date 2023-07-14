SELECT 
	u.name as pessoa_usuaria,
IF(YEAR(MAX(p.play_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM user as u
INNER JOIN play_history AS p ON p.user_id = u.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;