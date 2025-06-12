{{ config(tags=['vue_2']) }}

SELECT DISTINCT(track_id), ta.Name
FROM {{ ref('fact_track') }} ft
JOIN {{ ref('dim_track_attribute') }} ta ON (ft.track_id = ta.track_attribute_id)
WHERE (prod_year_album = 2000 OR prod_year_album = 2002)
ORDER BY ta.name ASC
