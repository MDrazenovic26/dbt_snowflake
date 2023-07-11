  select
        index as customer_id,
        name1 as name,
        name2 as surname
        from sneakerfactory.bronze.kna1
        where customer_id is not null