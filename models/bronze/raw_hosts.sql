with 

source as (

    select * from {{ source('sandbox_bronze', 'RAW_HOSTS') }}

),

renamed as (

    select
        id,
        name,
        is_superhost,
        created_at,
        updated_at

    from source

)

select * from renamed
