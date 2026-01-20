$execute in $(dim) run setblock $(x) $(y) $(z) minecraft:obsidian replace

# Summon invisible armor stand for locator bar
$execute in $(dim) run summon armor_stand $(x) $(y) $(z) {Tags:["hs_gravestone_marker"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}

# Set waypoint attribute after summoning (attributes don't set properly in summon NBT)
$execute in $(dim) positioned $(x) $(y) $(z) as @e[type=armor_stand,tag=hs_gravestone_marker,distance=..1,limit=1] run attribute @s minecraft:waypoint_transmit_range base set 1000.0
