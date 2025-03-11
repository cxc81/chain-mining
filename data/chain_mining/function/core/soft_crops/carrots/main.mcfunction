scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/carrot,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/carrots/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:carrots[age=7]", mine_function: "soft_crops/carrots/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.carrots"}
