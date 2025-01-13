with 

source as (

    select * from {{ source('ecommerce', 'products') }}

),

renamed as (

    select
        product_id,
        `product category` as product_category,
        product_name_length,
        product_description_length,
        product_photos_qty,
        product_weight_g,
        product_length_cm,
        product_height_cm,
        product_width_cm

    from source

)

select * from renamed
