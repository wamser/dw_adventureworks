with source_data as (
    select
        stateprovinceid as 'estado_id',
        stateprovincecode as 'estado_codigo',
        countryregioncode as 'pais_codigo',
        name as 'nome'

    from {{ source('adventurewoks','state_province') }}
)

select *
from source_data