with source_data as (
    select
        salesreasonid as 'razao_venda_id',
        name as 'nome',
    from {{ source('adventurewoks','sales_reason') }}
)

select *
from source_data