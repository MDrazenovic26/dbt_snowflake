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
select * from final