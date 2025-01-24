# 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_offhand chain_mining_variables run data get storage chain_mining:data items.offhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_offhand chain_mining_variables run data get storage chain_mining:data items.offhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_offhand chain_mining_variables run data get storage chain_mining:data items.offhand.components."minecraft:enchantments".levels."minecraft:fortune"
execute store result storage chain_mining:data function_call.offhand.unbreaking_level int 1 run scoreboard players get unbreaking_level_offhand chain_mining_variables
