WITH source AS (
    SELECT *
    FROM {{ source('storeworkforce','SA_MOT_CAUDALES_PA_SEMANA') }}
),

renamed AS (
    SELECT
        COD_CENTRO AS Cod_Center,
        COD_SEMANA AS Cod_Week,
        PLANTILLA AS Workforce,
        PERMISOS AS Permissions,
        VAC_PLANIFICADAS Planned_Vac,
        NECESARIO AS Necessary,
        VACACIONES_PROPUESTAS AS Proposed_Vac,
        PETICION AS Request,
        COD_SEMANA_ANCLA AS Cod_Week_Anchor,
        ANEXOS AS Annexes,
        INTERINOS AS Interim,
        HAY_CAMBIOS_ANCLA AS There_Changes_Anchor,
        COD_CENTRO_ANCLA AS Cod_Center_Anchor,
        SOBRA_FALTA_PETICION AS Leftover_Missing_Request,
        FIJOS_DISCONTINUOS AS Fixed_Discontinuous
    FROM source
)

SELECT * FROM renamed