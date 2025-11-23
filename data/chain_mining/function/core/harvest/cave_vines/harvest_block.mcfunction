# Before 1.21.9, it has a hardcoded drop of 1 glow berry
# Since 1.21.9, it uses the minecraft:harvest/cave_vine loot table
loot spawn ~ ~ ~ loot chain_mining:harvest/cave_vines

execute if block ~ ~ ~ minecraft:cave_vines run return run setblock ~ ~ ~ minecraft:cave_vines[berries=false]
return run setblock ~ ~ ~ minecraft:cave_vines_plant[berries=false]
