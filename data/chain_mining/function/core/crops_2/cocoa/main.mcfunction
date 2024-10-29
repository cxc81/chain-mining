scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1] run function chain_mining:core/crops_2/cocoa/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:cocoa[age=2]", mine_function: "crops_2/cocoa/mine"}
function chain_mining:core/generic/actionbar_feedback
