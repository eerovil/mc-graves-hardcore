tag @s remove hs_downed
tag @s remove hs_downed_with_gravestone

gamemode survival @s
title @s title {"text":"Revived!","color":"green"}
effect give @s minecraft:instant_health 1 1 true
effect give @s minecraft:regeneration 5 2 true
effect give @s minecraft:hunger 5 255 true

# remove experience
xp set @s 0 levels
xp set @s 0 points

data modify storage health_spectator:location dim set from entity @s LastDeathLocation.dimension
data modify storage health_spectator:location x set from entity @s LastDeathLocation.pos[0]
data modify storage health_spectator:location y set from entity @s LastDeathLocation.pos[1]
data modify storage health_spectator:location z set from entity @s LastDeathLocation.pos[2]

# Ensure Y coordinate is at least the minimum build height for the dimension
function health_spectator:adjust_y_to_build_limit with storage health_spectator:location

function health_spectator:revive_player_inner with storage health_spectator:location

playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0.5 1
