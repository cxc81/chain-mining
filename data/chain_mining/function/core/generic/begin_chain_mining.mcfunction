# 所有连锁采集公共的开头

tag @s add chain_mining_current_player
data modify storage chain_mining:data function_call.actionbar set value []
data modify storage chain_mining:player_nbt data set from entity @s

# 读取主副手物品
function chain_mining:core/generic/mainhand/read_item
function chain_mining:core/generic/offhand/read_item
# 获取主副手物品的部分组件信息
function chain_mining:core/generic/mainhand/fetch_components/main
function chain_mining:core/generic/offhand/fetch_components/main

# 根据一些组件信息，判断物品是否能够在连锁采集中消耗耐久
execute store result score damagable_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/is_damagable
execute store result score damagable_offhand chain_mining_variables run function chain_mining:core/generic/offhand/is_damagable
