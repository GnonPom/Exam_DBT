SELECT
    PLAYLISTID AS playlist_id,
    NAME AS name
FROM
    {{ source('DST_DB', 'PLAYLIST') }}