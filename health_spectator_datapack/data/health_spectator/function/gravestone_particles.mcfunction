# Run a particle effect at the marker (which sits on the obsidian block)
execute at @s run particle minecraft:portal ~ ~1 ~ 0.2 0.5 0.2 0.01 10

# execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.5 1 1
# Every 100 ticks, play a sound
execute at @s if score @s hs_gravestone_timer matches 100 run playsound minecraft:particle.soul_escape master @a[distance=..16] ~ ~ ~ 16 1 1

# Increment timer
scoreboard players add @s hs_gravestone_timer 1

# Reset timer if it exceeds 100
execute if score @s hs_gravestone_timer matches 101.. run scoreboard players set @s hs_gravestone_timer 0