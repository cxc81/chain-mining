function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/sweet_berries,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/sweet_berry_bush/replant

function chain_mining:core/generic/tp_items
function chain_mining:core/soft_crops/sweet_berry_bush/find
