# scoreboard players get @s time_since_death
scoreboard players get @s time_since_death

execute unless score @s time_since_death matches ..0 run function health_spectator:teleport_to_death

