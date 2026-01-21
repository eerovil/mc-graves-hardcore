# Track players when they join (give them the tracked tag)
execute as @a[tag=!hs_tracked_player] run tag @s add hs_tracked_player

execute as @a[scores={time_since_death=1}, gamemode=survival] unless data entity @s LastDeathLocation run scoreboard players set @s time_since_death 0
execute as @a[scores={time_since_death=1}, gamemode=survival] if data entity @s LastDeathLocation run function health_spectator:teleport_to_death
execute as @a[tag=hs_downed,gamemode=spectator] run function health_spectator:place_gravestone
execute as @a[tag=hs_downed_with_gravestone,gamemode=spectator] run function health_spectator:check_block
execute as @e[type=armor_stand,tag=hs_gravestone_marker] run function health_spectator:gravestone_particles

# Check if all players are dead and reset if needed (only if all tracked players are online)
function health_spectator:check_all_dead
