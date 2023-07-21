{{
    config( materialized = 'table' )
}}

with source as (
    select 
        * 
    from 
        {{ source('snf_example', 'lips') }}
),
final as(
    select
        *
    from
        source
)
{{ dbt_utils.deduplicate(
    relation='final',
    partition_by='index',
    order_by='fbl1n desc',
   )
}}