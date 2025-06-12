{{ config(tags=['vue_11']) }}

SELECT DISTINCT(p.name)
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_album') }} al ON (ft.album_id = al.album_id)
JOIN {{ ref('dim_playlist') }} p ON (ft.playlist_id = p.playlist_id)
WHERE al.artist_birth_year < 1990
ORDER BY p.name


