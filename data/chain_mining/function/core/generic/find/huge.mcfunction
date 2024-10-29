# 寻找特定方块(blocks)，并调用特定的采集函数(mine_function)
# 连锁范围：5×4×5
# 遍历顺序：
#  1. 相对Y坐标：[0, 1, -1, 2]
#  2. 曼哈顿距离：[0, 1, 2, 3, 4]
#  3. 相对X坐标：[-2, -1, 0, 1, 2]
#  3. 相对Z坐标：[-2, -1, 0, 1, 2]
$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~ ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~ ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~-1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~ ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~2 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~2 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~2 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~2 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)