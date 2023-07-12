{{
    config(
        materialized= 'table'
    )
}}

with t052 as(
    select 
    currency,
    case
    when index is null then '-99'
    else index
    end as index
    ,
    currencyid
from SNEAKERFACTORY.BRONZE.t052

union

select
    'Swedish Franc' as currency,
    'ST05' as index,
    'CHF' as currencyid
)
select * from t052