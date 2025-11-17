tellraw @s [{"text":"Pulling you closer to your death location...","color":"yellow"}]

# pull player one block toward death location
$execute as @s \
    at @s \
    in $(dim) \
    facing $(x) $(y) $(z) \
    run tp @s ^ ^ ^2.1
