with source_data as (

    select *
    from {{ ref('raw_hosts') }}

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
