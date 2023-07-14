{{
    config(
        materialized= 'table'
    )
}}

with vbrk as(
    select 
    RSNR ,
	KPEIN ,
	PERNR ,
	SKTOF ,
	case
    when index is null then '-99'
    else index
    end as index
    ,
	FAKTY ,
	TIMESTAMP ,
	FAKPOS ,
	FAKRK ,
	MANDT ,
	NETWR ,
	WAERS ,
	BEZNR ,
	FAKDT ,
	FKLMG 
from SNEAKERFACTORY.bronze.vbrk
)
select * from vbrk