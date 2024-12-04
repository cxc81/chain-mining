loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:resin_clump[waterlogged=false] run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:resin_clump[waterlogged=true] run setblock ~ ~ ~ minecraft:water destroy

scoreboard players add num_blocks_mined chain_mining_variables 1

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:resin_clump", mine_function: "crops_1/resin_clump/mine"}
