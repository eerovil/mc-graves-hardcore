scoreboard objectives add time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add hs_gravestone_timer dummy

scoreboard objectives add hs_x dummy
scoreboard objectives add hs_y dummy
scoreboard objectives add hs_z dummy
scoreboard objectives add hs_dim dummy

tellraw @a {"text":"[health_spectator] Setup complete. Remember to enable keepInventory and disable doImmediateRespawn.","color":"yellow"}
gamerule keepInventory true
gamerule doImmediateRespawn false