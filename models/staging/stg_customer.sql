with source_data as (
    select
        customerid as 'codigo'
        personid as 'pessoa_id', 
        territoryid as 'territorio_id'

    from {{ source('adventurewoks','customer') }}
)

select *
from source_data