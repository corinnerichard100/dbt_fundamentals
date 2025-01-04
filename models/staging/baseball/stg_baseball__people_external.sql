with 

source as (

    select * from {{ source('baseball', 'people_external') }}

),

renamed as (

    select
        playerid,
        birthyear,
        birthmonth,
        birthday,
        birthcountry,
        birthstate,
        birthcity,
        deathyear,
        deathmonth,
        deathday,
        deathcountry,
        deathstate,
        deathcity,
        namefirst,
        namelast,
        namegiven,
        weight,
        height,
        bats,
        throws,
        debut,
        finalgame,
        retroid,
        bbrefid

    from source

)

select * from renamed
