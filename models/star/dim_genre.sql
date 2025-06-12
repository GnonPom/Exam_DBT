SELECT
    GENREID AS genre_id,
    NAME AS name
FROM
    {{ source('DST_DB', 'GENRE') }}