{{
    config( materialized = 'table' )
}}

with lips_example_utils as(
    select
        *
    from
        {{ ref('lips_example_util') }}
),
final as(
    select * from lips_example_utils
)

select * from final