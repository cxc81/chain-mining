# @since 1.21.5

# 获取物品的魔咒信息（只关心耐久、精准采集、时运）
# 若对应魔咒不存在，则视为0
execute store result score unbreaking_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments"."minecraft:unbreaking"
execute store result score silk_touch_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments"."minecraft:silk_touch"
execute store result score fortune_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments"."minecraft:fortune"
