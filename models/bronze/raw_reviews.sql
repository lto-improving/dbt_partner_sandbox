with 

source as (

    select * from {{ source('sandbox_bronze', 'RAW_REVIEWS') }}

),

renamed as (

    select
        id,
        listing_id,
        date,
        reviewer_name,
        comments,
        sentiment

    from source

)

select * from renamed
