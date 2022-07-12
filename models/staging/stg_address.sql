with source_data as (
    select
        addressid as 'codigo',
        addressline1 as 'endereco1',
        addressline2 as 'endereco2', 
        stateprovinceid as 'estado_id',
        postalcode as 'cep'


    from {{ source('adventurewoks','address') }}
)

select *
from source_data