# 寻找特定方块(blocks)，并调用特定的采集函数(mine_function)
# 采集范围：与当前位置的曼哈顿距离在1~2之间的方块，共18个
# 遍历顺序：Y从大到小，随后Z={0,-1,1}，最后X={0,-1,1}
$execute positioned ~ ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)

$execute positioned ~ ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~-1 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~1 ~-1 ~ if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
$execute positioned ~ ~-1 ~1 if block ~ ~ ~ $(blocks) run function chain_mining:core/$(mine_function)
