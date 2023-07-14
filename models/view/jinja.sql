{{
    config ( 
        materialized = 'view'
        )
}}

{% set wares = ["EUR","SEK"] %}

select 
    rsnr,
    {% for waers in wares %}
    sum(case when waers = '{{waers}}' then netwr end) as {{waers}}_net_profit,
    {% endfor %}
    sum(netwr) as total_amount
from {{ ref( 'vbrk' ) }}
group by 1