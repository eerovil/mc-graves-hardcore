$execute in $(dim) run tp @s $(x) $(y) $(z)
$execute in $(dim) run setblock $(x) $(y) $(z) minecraft:fire replace

$execute in $(dim) positioned $(x) $(y) $(z) run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..3]
