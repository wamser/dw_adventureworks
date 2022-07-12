with source_data as (
    select
        productcategoryid as 'product_sub_category_id',
        productcategoryid as 'product_category_id',
        name as 'descricao'

    from {{ source('adventurewoks','product_sub_category') }}
)

select *
from source_data