# Reset a single player: teleport to spawn, set survival, clear inventory
# Remove all death-related tags (ignore if they don't exist)
execute if entity @s[tag=hs_downed] run tag @s remove hs_downed
execute if entity @s[tag=hs_downed_with_gravestone] run tag @s remove hs_downed_with_gravestone

# Set gamemode to survival
gamemode survival @s

# Get player's spawn point and teleport there
# Store spawn data in storage (using respawn NBT path)
data modify storage health_spectator:spawn dim set from entity @s respawn.dimension
data modify storage health_spectator:spawn x set from entity @s respawn.pos[0]
data modify storage health_spectator:spawn y set from entity @s respawn.pos[1]
data modify storage health_spectator:spawn z set from entity @s respawn.pos[2]

# Teleport to player's spawn point
function health_spectator:teleport_to_spawn with storage health_spectator:spawn

# Clear inventory (ignore if empty)
clear @s
