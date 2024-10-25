# 获取主手工具的最大耐久度
# 由于物品的最大耐久度必须是正整数，因此用0代表该物品不存在最大耐久度（即不会损耗耐久）
# 如果手持的不是挖掘工具，则直接返回0
# 否则按照以下逻辑：
#   若获取到已经序列化的max_damage组件，返回对应的值
#   若获取到已经序列化的!max_damage组件，返回0
#   否则硬编码返回值，针对所有可损伤的物品：
#     原本就是挖掘工具：剑、斧、锄、锹、镐，剪刀、三叉戟、重锤
#     其余具有最大耐久的物品：
execute unless score holding_tool_mainhand chain_mining_variables matches 1 run return 0
execute if data storage chain_mining:data items.mainhand.components."minecraft:max_damage" run return run \
    data get storage chain_mining:data items.mainhand.components."minecraft:max_damage"
execute if data storage chain_mining:data items.mainhand.components."!minecraft:max_damage" run return 0

execute if items entity @s weapon.mainhand #chain_mining:golden_tool run return 32
execute if items entity @s weapon.mainhand #chain_mining:wooden_tool run return 59
execute if items entity @s weapon.mainhand #chain_mining:stone_tool run return 131
execute if items entity @s weapon.mainhand #chain_mining:iron_tool run return 250
execute if items entity @s weapon.mainhand #chain_mining:diamond_tool run return 1561
execute if items entity @s weapon.mainhand #chain_mining:netherite_tool run return 2031
execute if items entity @s weapon.mainhand minecraft:shears run return 238
execute if items entity @s weapon.mainhand minecraft:trident run return 250
execute if items entity @s weapon.mainhand minecraft:mace run return 500

return 0
