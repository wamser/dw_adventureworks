with source_data as (
    select
        businessentityid as 'entidade_negocio_id',
        personid as 'pessoa_id', 

    from {{ source('adventurewoks','business_entity_contact') }}
)

select *
from source_data