# @arguments
#   blocks - 即block_predicate命令参数的格式
#   mine_function - 仅需传入"chain_mining:core/"后的部分
# 寻找特定方块(blocks)，并调用特定的采集函数(mine_function)
# 采集范围：与当前位置的曼哈顿距离在1~2之间的方块，但不能在下方，共13个方块
# 遍历顺序：
#  1. 相对Y坐标：[1, 0]
#  2. 相对X坐标：[0, -1, 1]
#  3. 相对Z坐标：[0, -1, 1]
$execute positioned ~ ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)


$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
