{{ config(tags=['vue_6']) }}

SELECT da.artist_name,
       COUNT(DISTINCT ft.track_id) AS total_songs
FROM {{ ref('dim_album') }} da
JOIN {{ ref('fact_track') }} ft ON da.album_id = ft.album_id
GROUP BY da.artist_name
ORDER BY total_songs DESC

