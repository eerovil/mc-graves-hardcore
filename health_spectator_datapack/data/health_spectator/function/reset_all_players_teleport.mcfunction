# Second part of reset: teleport players to spawn and clean up
# This runs after a delay from reset_all_players

# For each player: teleport to spawn, clear inventory, remove tags
execute as @a run function health_spectator:reset_player

# Clear all gravestones and markers
execute as @e[type=armor_stand,tag=hs_gravestone_marker] run kill @s
execute as @e[type=text_display,tag=hs_gravestone_text] run kill @s

tellraw @a {"text":"[health_spectator] Game reset complete.","color":"green"}
