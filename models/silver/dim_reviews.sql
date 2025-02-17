with source_data as (

    select *
    from {{ ref('raw_reviews') }}

)

select *
from source_data