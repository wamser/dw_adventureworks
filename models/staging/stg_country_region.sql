with source_data as (
    select
        countryregioncode as 'regiao_pais_id',
        name as 'nome',
    from {{ source('adventurewoks','country_region') }}
)

select *
from source_data