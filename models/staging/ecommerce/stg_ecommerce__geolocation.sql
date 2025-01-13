with 

source as (

    select * from {{ source('ecommerce', 'geolocation') }}

),

renamed as (

    select
        geolocation_zip_code_prefix,
        geolocation_lat,
        geolocation_lng,
        geolocation_city,
        geolocation_state

    from source

)

select * from renamed