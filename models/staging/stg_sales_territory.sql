with source_data as (
    select
        territoryid as 'territorio_id',
        name as 'nome',
        countryregioncode as 'regiao_pais_id',
    from {{ source('adventurewoks','sales_territory') }}
)

select *
from source_data