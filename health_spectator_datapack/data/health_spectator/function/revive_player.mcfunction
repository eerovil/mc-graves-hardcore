tag @s remove hs_downed
gamemode survival @s
title @s title {"text":"Revived!","color":"green"}
effect give @s minecraft:regeneration 5 2 true

data modify storage health_spectator:location dim set from entity @s LastDeathLocation.dimension
data modify storage health_spectator:location x set from entity @s LastDeathLocation.pos[0]
data modify storage health_spectator:location y set from entity @s LastDeathLocation.pos[1]
data modify storage health_spectator:location z set from entity @s LastDeathLocation.pos[2]

function health_spectator:tp_with_fire with storage health_spectator:location
