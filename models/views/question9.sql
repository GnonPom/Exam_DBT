{{ config(tags=['vue_9']) }}

SELECT DISTINCT(ft.track_id), 
       ta.name
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_album') }} al ON (ft.album_id = al.album_id)
JOIN {{ ref('dim_track_attribute') }} ta ON (ft.track_id = ta.track_attribute_id)
WHERE (ft.genre_id = 1 OR ft.genre_id = 5) AND al.artist_country = 'France'
ORDER BY ft.track_id

