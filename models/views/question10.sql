{{ config(tags=['vue_10']) }}


SELECT g.name, AVG(ft.bytes) AS average
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_genre') }} g ON (ft.genre_id = g.genre_id)
GROUP BY g.name
ORDER BY average DESC

