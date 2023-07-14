{{
    config(
        materialized= 'table'
    )
}}

with KNA1_cleaned as(
    select 
    index,
    telf1,
    case
    when lati is null then '-99'
    else lati
    end as lati
    ,
    case
    when long is null then '-99'
    else long
    end as long,
   -- land1,
    land2,
    rscon,
    ort01,
    concat(coalesce(name1,'NN'),' ',coalesce(name2,'NN')) as full_name,
    pstlz,
    gende,
    regio,
    stras,
    birth
from SNEAKERFACTORY.silver.KNA
order by index
)
select * from KNA1_cleaned