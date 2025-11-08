# @arguments
#   blocks, mine_function
# 寻找特定方块(blocks)，并调用特定的采集函数(mine_function)
# 采集范围：当前位置水平方向的一圈，共8个
# 遍历顺序：Z={0,-1,1}，随后X={0,-1,1}
$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
