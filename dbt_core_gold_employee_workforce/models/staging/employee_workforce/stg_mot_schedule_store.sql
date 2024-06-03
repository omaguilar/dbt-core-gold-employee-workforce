WITH source AS (
    SELECT *
    FROM {{ source('storeworkforce','SA_MOT_HORARIOS_TIENDA') }}
),

renamed AS (
    SELECT
        COD_CENTRO AS Cod_Center,
        FECHA AS Date,
        ESTADO AS Status,
        HORA_APERTURA AS Opening_hour,
        HORA_CIERRE AS Closing_hour,
    FROM source
)

SELECT * FROM renamed