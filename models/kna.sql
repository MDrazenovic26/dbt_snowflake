{{
    config(
        materialized= 'table'
    )
}}

with KNA1 as(
    select 
--    kunnr,
    telf1,
    lati,
    long,
    case
    when index is null then -99
    else index
    end as index
    ,
    land1,
    land2,
    rscon,
    ort01,
    name1,
    name2,
    pstlz,
    gende,
    regio,
    stras,
    birth
from SNEAKERFACTORY.BRONZE.KNA1
)
select * from KNA1