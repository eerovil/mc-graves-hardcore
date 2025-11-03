# Read the player's health immediately after taking damage
# revoke any previous death advancements to allow multiple deaths
advancement revoke @s only health_spectator:damage_trigger

execute store result score @s temp_health run data get entity @s Health 1

# If that damage would kill them (health ≤ 0)
execute if score @s temp_health matches ..0 run function health_spectator:on_death
