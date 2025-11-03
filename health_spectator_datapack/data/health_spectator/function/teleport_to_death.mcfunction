
# Switch gamemode and finish
gamemode spectator @s
# Find the saved death location and teleport there

tag @s remove hs_pending
tellraw @s {"text":"[health_spectator] Process complete.","color":"gray"}


data modify storage health_spectator:location dim set from entity @s LastDeathLocation.dimension
data modify storage health_spectator:location x set from entity @s LastDeathLocation.pos[0]
data modify storage health_spectator:location y set from entity @s LastDeathLocation.pos[1]
data modify storage health_spectator:location z set from entity @s LastDeathLocation.pos[2]

function health_spectator:tp with storage health_spectator:location
