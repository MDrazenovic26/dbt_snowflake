{{
    config(schema='example_schema',materialized='view')
}}

with teams as(

    select * from {{ref('example_teams')}}

),

team_locations as(

    select * from {{ref('team_locations')}}

),

final as (

    select
        ts.team,
        tl.city,
        tl.state

    from teams as ts

    left join team_locations as tl
        on tl.name = ts.team

)

select * from final