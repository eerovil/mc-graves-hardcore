# Debug function to check player spawn data
# Run this as a player to see their spawn NBT data

tellraw @s {"text":"=== Spawn Debug Info ===","color":"yellow","bold":true}

# Try to read respawn data
execute store result score #has_respawn hs_gravestone_timer run data get entity @s respawn.dimension
tellraw @s [{"text":"Has respawn.dimension: ","color":"gray"},{"score":{"name":"#has_respawn","objective":"hs_gravestone_timer"},"color":"white"}]

# Try to get respawn coordinates
execute store result score #x hs_gravestone_timer run data get entity @s respawn.pos[0]
execute store result score #y hs_gravestone_timer run data get entity @s respawn.pos[1]
execute store result score #z hs_gravestone_timer run data get entity @s respawn.pos[2]

tellraw @s [{"text":"Respawn X: ","color":"gray"},{"score":{"name":"#x","objective":"hs_gravestone_timer"},"color":"white"}]
tellraw @s [{"text":"Respawn Y: ","color":"gray"},{"score":{"name":"#y","objective":"hs_gravestone_timer"},"color":"white"}]
tellraw @s [{"text":"Respawn Z: ","color":"gray"},{"score":{"name":"#z","objective":"hs_gravestone_timer"},"color":"white"}]

# Try old spawn paths
execute store result score #spawnx hs_gravestone_timer run data get entity @s SpawnX
tellraw @s [{"text":"SpawnX (old): ","color":"gray"},{"score":{"name":"#spawnx","objective":"hs_gravestone_timer"},"color":"white"}]

# Dump full NBT to chat (this will be long)
tellraw @s {"text":"Full NBT data (check chat/logs):","color":"yellow"}
data get entity @s
