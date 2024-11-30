with
    fonte_transportadoras as (
        select 
            cast(ID as int) as pk_transportadora
            , cast(COMPANYNAME as varchar) as nm_transportadora
        from {{ source('erp_northwind', 'shippers') }}
    )

select *
from fonte_transportadoras