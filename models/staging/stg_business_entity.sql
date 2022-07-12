with source_data as (
    select
        businessentityid as 'entidade_negocio_id',

    from {{ source('adventurewoks','business_entity') }}
)

select *
from source_data