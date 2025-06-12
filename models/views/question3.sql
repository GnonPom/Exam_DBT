{{ config(tags=['vue_3']) }}

SELECT DISTINCT dta.name,
       dta.composer,
       ft.genre_id
FROM {{ ref('dim_track_attribute') }} dta
RIGHT JOIN {{ ref('fact_track') }} ft ON (dta.track_attribute_id = ft.track_id)
WHERE ft.genre_id = 1 OR ft.genre_id = 2
ORDER BY dta.name