execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

function chain_mining:core/generic/mainhand/destroy_block
execute as @e[type=minecraft:item,predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,limit=1] run function chain_mining:core/hard_crops/cocoa/replant
function chain_mining:core/generic/tp_items
scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/normal {blocks: "minecraft:cocoa[age=2]", mine_function: "hard_crops/cocoa/mine"}
