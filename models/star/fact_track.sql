SELECT t.TRACKID AS track_id,
       t.MILLISECONDS AS milliseconds,
       t.BYTES AS bytes,
       t.UNITPRICE AS unit_price,
       a.PRODYEAR AS prod_year_album,
       a.CDQUANTITY AS cd_quantity_album,
       t.ALBUMID AS album_id,
       t.MEDIATYPEID AS mediatype_id,
       t.GENREID AS genre_id,
       pt.PLAYLISTID AS playlist_id
FROM {{ source('DST_DB', 'TRACK') }} t
JOIN {{ source('DST_DB', 'ALBUM') }} a ON (t.ALBUMID = a.ALBUMID)
JOIN {{ source('DST_DB', 'PLAYLISTTRACK') }} pt ON (t.TRACKID = pt.TRACKID)