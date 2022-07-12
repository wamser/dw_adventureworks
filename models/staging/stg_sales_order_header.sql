with source_data as (
    select
        salesorderid as 'pedido_id',
        orderdate as 'data_emissao',
        shipdate as 'data_carregamento',
        status as 'status',
        purchaseordernumber as 'pedido_compra_id',
        purchaseordernumber as 'pedido_compra_id',
        customerid as 'cliente_id',
        salespersonid as 'vendedor_id',
        territoryid as 'territorio_id',
        creditcardid as 'cartao_credito_id',
        subtotal,
        freight as 'frete',
        totaldue as 'total',

    from {{ source('adventurewoks','sales_order_header') }}
)

select *
from source_data