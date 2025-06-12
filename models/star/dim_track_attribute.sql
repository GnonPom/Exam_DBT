
SELECT TRACKID AS track_attribute_id,
       NAME AS name,
       COMPOSER AS composer
FROM
    {{ source('DST_DB', 'TRACK') }}