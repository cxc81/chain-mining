# 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:fortune"
