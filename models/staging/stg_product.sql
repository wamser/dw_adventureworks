with source_data as (
    select
        productid as 'produto_id',
        name as 'nome',
        safetystocklevel as 'estoque_minimo',
        standardcost as 'preco_standard',
        listprice as 'preco_lista',
        productsubcategoryid as 'sub_categoria_produto_id'


    from {{ source('adventurewoks','product') }}
)

select *
from source_data