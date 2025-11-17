execute as @a[scores={time_since_death=1}, gamemode=survival] run function health_spectator:teleport_to_death
execute as @a[tag=hs_downed,gamemode=spectator] run function health_spectator:place_gravestone
execute as @a[tag=hs_downed_with_gravestone,gamemode=spectator] run function health_spectator:check_block
execute as @e[type=marker,tag=hs_gravestone_marker] run function health_spectator:gravestone_particles
