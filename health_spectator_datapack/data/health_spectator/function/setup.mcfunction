scoreboard objectives add temp_health dummy
scoreboard objectives add time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add hs_gravestone_timer dummy

tellraw @a {"text":"[health_spectator] Setup complete. Remember to enable keepInventory and disable doImmediateRespawn.","color":"yellow"}
gamerule keepInventory true
gamerule doImmediateRespawn false