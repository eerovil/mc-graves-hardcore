# Teleport player to their spawn point
# Called with storage health_spectator:spawn containing dim, x, y, z
$execute in $(dim) run tp @s $(x) $(y) $(z)
