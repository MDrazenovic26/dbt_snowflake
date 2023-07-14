{{
    config(
        materialized= 'table'
    )
}}

with t052_new as(
    select 
    currency,
    case
    when index is null then '-99'
    else index
    end as index
    ,
    currencyid
from SNEAKERFACTORY.bronze.t052

union

select
    'Swedish Franc' as currency,
    'ST05' as index,
    'CHF' as currencyid
)
select * from t052_new