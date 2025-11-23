scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,predicate=chain_mining:item/beetroot_seeds,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/beetroots/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:beetroots[age=3]", mine_function: "soft_crops/beetroots/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.beetroots"}
