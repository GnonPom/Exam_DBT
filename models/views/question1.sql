{{ config(tags=['vue_1']) }}

SELECT title, cd_quantity 
FROM {{ ref('dim_album') }}
WHERE cd_quantity > 1 ORDER BY title ASC
