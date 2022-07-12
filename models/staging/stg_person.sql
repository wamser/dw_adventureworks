with source_data as (
    select
        businessentityid as 'entidade_negocio_id',
        firstname as 'primeiro_nome',
        middlename as 'nome_meio', 
        lastname 'ultimo_nome', 

    from {{ source('adventurewoks','person') }}
)

select *
from source_data