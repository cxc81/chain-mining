# 只能连锁会自然枯萎且不含水的树叶，连锁范围：5×4×5
# 遍历顺序：
#  1. 相对Y坐标：[0, 1, -1, 2]
#  2. 曼哈顿距离：[0, 1, 2, 3, 4]
#  3. 相对X坐标：[-2, -1, 0, 1, 2]
#  3. 相对Z坐标：[-2, -1, 0, 1, 2]
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~ ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~ ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~ ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~ ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~ ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~ ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~ ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~ ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~ ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~ ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~ ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~ ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~ ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~ ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~ ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~-1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~-1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~-1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~-1 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~-1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~-1 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves

execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~2 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~2 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~2 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~2 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~2 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~2 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~2 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~ ~2 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~2 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~2 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~2 ~ if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~2 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~2 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~2 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-1 ~2 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~2 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~1 ~2 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~2 ~-1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~2 ~1 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~2 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~-2 ~2 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~2 ~-2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
execute positioned ~2 ~2 ~2 if block ~ ~ ~ minecraft:jungle_leaves[persistent=false,waterlogged=false] run function chain_mining:logs/generic/chain_mining_leaves
