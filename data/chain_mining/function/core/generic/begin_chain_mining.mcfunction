# 所有连锁采集公共的开头

tag @s add chain_mining_current_player
data modify storage chain_mining:data function_call.actionbar set value []
# 将主手物品存入命令存储chain_mining:data的items.mainhand
data modify storage chain_mining:data items.mainhand set from entity @s SelectedItem
execute unless data entity @s SelectedItem run data remove storage chain_mining:data items.mainhand
# 将副手物品存入命令存储chain_mining:data的items.offhand
data modify storage chain_mining:data items.offhand set from entity @s Inventory[{Slot:-106b}]
execute unless data entity @s Inventory[{Slot:-106b}] run data remove storage chain_mining:data items.offhand
data remove storage chain_mining:data items.offhand.Slot
# 获取主副手物品信息
function chain_mining:core/generic/mainhand/fetch_components/main
function chain_mining:core/generic/offhand/fetch_components/main
