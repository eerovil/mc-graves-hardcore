execute as @a[tag=hs_pending] at @s run function health_spectator:process_pending
execute as @a[tag=hs_downed,gamemode=spectator] run function health_spectator:check_block
execute as @e[type=marker,tag=hs_gravestone_marker] run function health_spectator:gravestone_particles
