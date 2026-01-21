# Adjust Y coordinate to be at least the minimum build height for the dimension
# Called with storage health_spectator:location containing dim, x, y, z
# Sets y to minimum build height if it's below the limit
# Overworld: -64, Nether/End: 0

# Get current Y as integer for comparison
execute store result score #current_y hs_gravestone_timer run data get storage health_spectator:location y

# Check dimension and compare with minimum build height
# Overworld minimum: -64
execute if data storage health_spectator:location {dim:"minecraft:overworld"} if score #current_y hs_gravestone_timer matches ..-65 run data modify storage health_spectator:location y set value -64.0

# Nether/End minimum: 0
execute if data storage health_spectator:location {dim:"minecraft:the_nether"} if score #current_y hs_gravestone_timer matches ..-1 run data modify storage health_spectator:location y set value 0.0
execute if data storage health_spectator:location {dim:"minecraft:the_end"} if score #current_y hs_gravestone_timer matches ..-1 run data modify storage health_spectator:location y set value 0.0
