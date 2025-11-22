function chain_mining:core/harvest/cave_vines/spawn_loot
function chain_mining:core/harvest/cave_vines/set_cave_vines
function chain_mining:core/generic/tp_items
scoreboard players add num_blocks_mined chain_mining_variables 1

function chain_mining:core/generic/find/normal {blocks: "#minecraft:cave_vines[berries=true]", mine_function: "harvest/cave_vines/mine"}
