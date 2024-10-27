# 这个函数只会在每次连锁开始时运行一次，目的是获取玩家主手物品的信息
# 获取主手物品的一些与挖掘相关的基本信息
execute store result score holding_tool_mainhand chain_mining_variables run function chain_mining:generic/mainhand/is_holding_tool
execute store result score max_damage_mainhand chain_mining_variables run function chain_mining:generic/mainhand/get_max_damage
execute store result score unbreakable_mainhand chain_mining_variables if data storage chain_mining:data items.mainhand.components."minecraft:unbreakable"
execute store result score damage_mainhand chain_mining_variables run function chain_mining:generic/mainhand/get_damage
# 根据以上信息，判断物品是否能够在连锁采集中消耗耐久
execute store result score damagable_mainhand chain_mining_variables run function chain_mining:generic/mainhand/is_damagable
# 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_mainhand chain_mining_variables run data get storage chain_mining:data items.mainhand.components."minecraft:enchantments".levels."minecraft:fortune"
execute store result storage chain_mining:data function_call.mainhand.unbreaking_level int 1 run scoreboard players get unbreaking_level_mainhand chain_mining_variables
