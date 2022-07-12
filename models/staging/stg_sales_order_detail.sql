with source_data as (
    select
        salesorderid as 'pedido_id',
        salesorderdetailid as 'item',
        orderqty as 'quantidade',
        productid as 'produto_id',
        orderqty as 'quantidade',
        unitprice as 'preco_unit',
        unitpricediscount as 'desconto_unit'
    from {{ source('adventurewoks','sales_order_detail') }}
)

select *
from source_data