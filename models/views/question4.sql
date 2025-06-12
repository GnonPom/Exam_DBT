{{ config(tags=['vue_4']) }}

SELECT TOP 10 SUM(ft.milliseconds) AS total_time,
       ft.album_id,
       da.title
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_album') }} da ON (ft.album_id = da.album_id)
GROUP BY ft.album_id, da.title
ORDER BY total_time DESC


