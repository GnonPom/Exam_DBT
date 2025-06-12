SELECT
    MEDIATYPEID AS mediatype_id,
    NAME AS name
FROM
    {{ source('DST_DB', 'MEDIATYPE') }}