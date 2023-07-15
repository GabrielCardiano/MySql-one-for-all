SELECT 
	MIN(plan_value) AS faturamento_minimo,
    MAX(plan_value) AS faturamento_maximo,
    ROUND(AVG(plan_value), 2) AS faturamento_medio,
    SUM(plan_value) AS faturamento_total
FROM user AS u
INNER JOIN plan AS p ON p.plan_id = u.plan_id;