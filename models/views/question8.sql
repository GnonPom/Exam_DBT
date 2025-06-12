{{ config(tags=['vue_8']) }}

SELECT DISTINCT pl.name
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_playlist') }} pl ON (ft.playlist_id = pl.playlist_id)
WHERE milliseconds > (4*60*1000)

