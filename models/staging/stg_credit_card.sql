with source_data as (
    select
        creditcardid as 'credit_card_id',
        cardtype as 'cardtype',

    from {{ source('adventurewoks','credit_card') }}
)

select *
from source_data