# @arguments
#   predicate - 仅需传入"chain_mining:block/"后的部分
#   mine_function - 仅需传入"chain_mining:core/"后的部分
# 寻找以谓词表示的特定方块(predicate)，并调用特定的采集函数(mine_function)
# 采集范围：当前位置水平方向的一圈，共8个方块
# 遍历顺序：Z={0,-1,1}，随后X={0,-1,1}
$execute positioned ~-1 ~ ~ if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~ if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if predicate chain_mining:block/$(predicate) run function chain_mining:core/$(mine_function)
