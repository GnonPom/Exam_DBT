{{ config(tags=['vue_5']) }}

SELECT artist_name, COUNT(album_id) AS nb_album
FROM {{ ref('dim_album') }}
GROUP BY artist_name
ORDER BY nb_album DESC

