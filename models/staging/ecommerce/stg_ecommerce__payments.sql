with 

source as (

    select * from {{ source('ecommerce', 'payments') }}

),

renamed as (

    select
        order_id,
        payment_sequential,
        payment_type,
        payment_installments,
        payment_value

    from source

)

select * from renamed
