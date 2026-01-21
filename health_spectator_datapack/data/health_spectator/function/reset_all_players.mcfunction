# Reset all players: teleport to spawn, set survival mode, clear inventory
tellraw @a {"text":"[health_spectator] All players are dead! Resetting game...","color":"red","bold":true}

# First revive all players
execute as @a run function health_spectator:revive_player

# Schedule teleport to spawn after 20 ticks (1 second delay)
schedule function health_spectator:reset_all_players_teleport 2t
