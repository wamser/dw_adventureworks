with source_data as (
    select
        businessentityid as 'pessoa_id',
        name as 'nome',
    from {{ source('adventurewoks','employee') }}
)

select *
from source_data