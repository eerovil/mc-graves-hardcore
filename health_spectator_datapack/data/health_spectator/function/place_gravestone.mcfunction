
tellraw @s {"text":"[health_spectator] Placing gravestone to death location.","color":"gray"}

data modify storage health_spectator:location dim set from entity @s LastDeathLocation.dimension
data modify storage health_spectator:location x set from entity @s LastDeathLocation.pos[0]
data modify storage health_spectator:location y set from entity @s LastDeathLocation.pos[1]
data modify storage health_spectator:location z set from entity @s LastDeathLocation.pos[2]

# Ensure Y coordinate is at least the minimum build height for the dimension
function health_spectator:adjust_y_to_build_limit with storage health_spectator:location

function health_spectator:place_gravestone_inner with storage health_spectator:location

tag @s remove hs_downed
tag @s add hs_downed_with_gravestone
tellraw @s {"text":"[health_spectator] Gravestone placed.","color":"gray"}

