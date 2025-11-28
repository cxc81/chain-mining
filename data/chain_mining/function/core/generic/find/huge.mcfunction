# @arguments
#   blocks - 即block_predicate命令参数的格式
#   mine_function - 仅需传入"chain_mining:core/"后的部分
# 寻找特定方块(blocks)，并调用特定的采集函数(mine_function)，目前仅用于连锁树叶类
# 连锁范围：第0层5×5，第1层5×5，第2层3×3，共58个方块
# 遍历顺序：
#  1. 相对Y坐标：[2, 1, 0]
#  2. 相对X坐标：[0, -1, 1, -2, 2]
#  3. 相对Z坐标：[0, -1, 1, -2, 2]
$execute positioned ~ ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~1 ~2 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~2 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)


$execute positioned ~ ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-2 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~2 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~1 ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)


$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-2 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-2 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~2 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~-2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~2 ~ ~2 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
