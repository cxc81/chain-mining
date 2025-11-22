function chain_mining:core/harvest/sweet_berry_bush/spawn_loot
setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
function chain_mining:core/generic/tp_items
scoreboard players add num_blocks_mined chain_mining_variables 1

function chain_mining:core/generic/find/small/using_predicate {predicate: "sweet_berry_bush/is_mature", mine_function: "harvest/sweet_berry_bush/mine"}
