with 

source as (

    select * from {{ source('sandbox_bronze', 'RAW_LISTINGS') }}

),

renamed as (

    select
        created_at,
        host_id,
        id,
        listing_url,
        minimum_nights,
        name,
        price,
        room_type,
        updated_at

    from source

)

select * from renamed
