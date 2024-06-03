WITH source AS (
    SELECT *
    FROM {{ source('storeworkforce','SA_MOT_MAESTRA_TEMPORAL') }}
),

renamed AS (
    SELECT
        ANNO AS Year,
        MES AS Month,
        SEMANA AS Week,
        FECHA AS Date,
        ETIQUETA_SEMANA AS Label_Week,
        COD_SEMANA_ANNO_ANT AS Cod_Week_Year_Prev
    FROM source
)

SELECT * FROM renamed