{{ config(tags=['vue_7']) }}

SELECT COUNT(g.name) AS total, g.name
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_genre') }} g ON (ft.genre_id = g.genre_id)
WHERE ft.prod_year_album = 2000
GROUP BY g.name
ORDER BY total DESC
LIMIT 1

