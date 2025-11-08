# Spawn the corresponding loot and set the current block to air/water
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

execute if predicate chain_mining:block/is_waterlogged run return run setblock ~ ~ ~ minecraft:water
return run setblock ~ ~ ~ minecraft:air
