{{
    config(
        materialized= 'view'
    )
}}


    select 
    index,
    full_name,
    telf1,
    land2
    from {{ ref('kna1_cleaned') }}
