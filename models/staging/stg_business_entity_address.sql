with source_data as (
    select
        businessentityid as 'entidade_negocio_id',
        addressid as 'endereco_id',
    from {{ source('adventurewoks','business_entity_address') }}
)

select *
from source_data