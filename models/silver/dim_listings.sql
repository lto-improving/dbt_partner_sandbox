with source_data as (

    select *
    from {{ ref('raw_listings') }}

)

select *
from source_data