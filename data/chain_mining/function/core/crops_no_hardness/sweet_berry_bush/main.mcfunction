scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:sweet_berries"}},limit=1] run function chain_mining:core/crops_no_hardness/sweet_berry_bush/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:sweet_berry_bush[age=2]", mine_function: "crops_no_hardness/sweet_berry_bush/mine"}
function chain_mining:core/generic/find/small {blocks: "minecraft:sweet_berry_bush[age=3]", mine_function: "crops_no_hardness/sweet_berry_bush/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.sweet_berry_bush"}
