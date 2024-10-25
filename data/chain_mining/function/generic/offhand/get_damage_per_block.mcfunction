# TODO：将damage_per_block应用到所有消耗耐久度的函数
# 获取副手工具的单方块耐久消耗量
# 若手持不是挖掘工具，则直接返回0
# 如果获取到了序列化的tool.damage_per_block，则直接返回值
# 如果获取到了序列化的tool，但没有序列化的damage_per_block，则返回1
# 否则硬编码返回值，这些物品有默认的tool组件：
#   镐、斧、锄、锹、剪刀：消耗1耐久
#   剑、三叉戟、重锤：消耗2耐久
execute unless score holding_tool_offhand chain_mining_variables matches 1 run return 0
execute if data storage chain_mining:data items.offhand.components."minecraft:tool".damage_per_block run return run \
    data get storage chain_mining:data items.offhand.components."minecraft:tool".damage_per_block
execute if data storage chain_mining:data items.offhand.components."minecraft:tool" run return 1

execute if items entity @s weapon.offhand #chain_mining:damage_per_block/1 run return 1
execute if items entity @s weapon.offhand #chain_mining:damage_per_block/2 run return 2
return 0
