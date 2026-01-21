# Check if all players are dead (in spectator mode)
# Only reset if all tracked players are currently online and dead

# If there are no players online, do nothing
execute unless entity @a run return 0

# Count total tracked players online and spectators using scoreboard
scoreboard players set #total hs_gravestone_timer 0
scoreboard players set #spectators hs_gravestone_timer 0

# Count total tracked players online (players with hs_tracked_player tag)
execute as @a[tag=hs_tracked_player] run scoreboard players add #total hs_gravestone_timer 1

# Count tracked spectators
execute as @a[tag=hs_tracked_player,gamemode=spectator] run scoreboard players add #spectators hs_gravestone_timer 1

# Only reset if:
# 1. All tracked players are online (all online players have the tracked tag)
# 2. All online tracked players are spectators (dead)
# 3. There's at least one player
# This ensures we only reset when all players who have ever connected are online and dead
execute if score #spectators hs_gravestone_timer >= #total hs_gravestone_timer if score #total hs_gravestone_timer matches 1.. if entity @a[tag=hs_tracked_player] run function health_spectator:reset_all_players

# Reset counters
scoreboard players set #spectators hs_gravestone_timer 0
scoreboard players set #total hs_gravestone_timer 0
