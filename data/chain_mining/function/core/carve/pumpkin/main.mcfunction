scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,predicate=chain_mining:item/pumpkin_seeds,tag=!chain_mining_detected,distance=..0.05,limit=1] align xyz store result score #carved_pumpkin_facing chain_mining_variables run function chain_mining:core/carve/pumpkin/get_carved_pumpkin_facing
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:pumpkin", mine_function: "carve/pumpkin/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.pumpkin"}
