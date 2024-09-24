# 所有连锁采集公共的开头

tag @s add mine_current_player
gamerule doTileDrops false
# 将主副手物品存入命令存储mine:data
data modify storage mine:data items.mainhand set from entity @s SelectedItem
data modify storage mine:data items.offhand set from entity @s Inventory[{Slot:-106b}]
data remove storage mine:data items.offhand.Slot
# 获取主副手物品信息
function mine:generic/mainhand/fetch_item_info
function mine:generic/offhand/fetch_item_info
