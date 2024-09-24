# 所有连锁采集公共的开头

tag @s add mine_player
gamerule doTileDrops false
# 将主副手物品存入命令存储mine:items
data modify storage mine:items mainhand set from entity @s SelectedItem
data modify storage mine:items offhand set from entity @s Inventory[{Slot:-106b}]
data remove storage mine:items offhand.Slot
# 获取主副手物品信息
function mine:generic/mainhand/get_item_info
function mine:generic/offhand/get_item_info