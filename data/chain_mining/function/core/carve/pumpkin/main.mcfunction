scoreboard players set num_blocks_mined chain_mining_variables 1
# 计算雕刻南瓜的朝向，用于连锁位置以及掉落物生成的修正
execute as @e[type=minecraft:item,predicate=chain_mining:item/pumpkin_seeds,tag=!chain_mining_detected,distance=..0.05,limit=1] align xyz store result score #carved_pumpkin_facing chain_mining_variables run function chain_mining:core/carve/pumpkin/get_carved_pumpkin_facing
function chain_mining:core/generic/tp_items
# 此处需修正连锁位置，使其方块坐标位于雕刻南瓜
execute align xyz positioned ~0.5 ~ ~0.5 run function chain_mining:core/carve/pumpkin/before_finding_pos_corrected

function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.pumpkin"}
