execute as @a[tag=hs_pending] at @s run function health_spectator:process_pending
execute as @a[tag=hs_downed,gamemode=spectator] run function health_spectator:check_block
