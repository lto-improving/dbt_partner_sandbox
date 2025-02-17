with dim_hosts as (

    select *
    from {{ ref('dim_hosts') }}

),

dim_listings as (

    select *
    from {{ ref('dim_listings') }}

),

dim_reviews as (

    select *
    from {{ ref('dim_reviews') }}

)

select 
    dim_reviews.id as review_id,
    dim_reviews.sentiment,
    dim_listings.id as listing_id,
    dim_hosts.id as host_id
from dim_hosts 
    left join dim_listings 
        on dim_hosts.id = dim_listings.host_id
    left join dim_reviews
        on dim_listings.id = dim_reviews.listing_id