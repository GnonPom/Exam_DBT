

SELECT
    a.ALBUMID AS album_id,
    a.TITLE AS title,
    a.PRODYEAR AS prod_year,
    a.CDQUANTITY AS cd_quantity,
    b.NAME AS artist_name,
    b.BIRTHYEAR AS artist_birth_year,
    b.COUNTRY AS artist_country
FROM
    {{ source('DST_DB', 'ALBUM') }} a
JOIN {{ source('DST_DB', 'ARTIST') }} b ON a.ARTISTID = b.ARTISTID


