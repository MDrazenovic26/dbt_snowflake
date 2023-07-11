  select
        index as customer_id,
        knuma as product,
        kschl as type
        from sneakerfactory.bronze.konp
        where customer_id is not null