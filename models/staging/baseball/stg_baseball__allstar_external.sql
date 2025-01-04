with 

source as (

    select * from {{ source('baseball', 'allstar_external') }}

),

renamed as (

    select
        playerid,
        yearid,
        gamenum,
        gameid,
        teamid,
        lgid,
        gp,
        startingpos

    from source

)

select * from renamed
