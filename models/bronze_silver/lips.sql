{{
    config(
        materialized= 'table'
    )
}}

with lips as(
   select 
    VBDAT ,
	VBELN ,
	FBL1N ,
	POSNR ,
	OVXD ,
	ARRID ,
	INDEX ,
	SENDD
from bronze.lips
)
select * from lips