
# too far from stored death point?
$execute in $(dim) positioned $(x) $(y) $(z) \
    if entity @s[distance=10..] \
    run function health_spectator:pull_closer with storage health_spectator:location

$execute in $(dim) positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:obsidian run return 0

# if missing -> revive
scoreboard players get @s time_since_death

execute unless score @s time_since_death matches ..20 run function health_spectator:revive_player
