# 这个函数只会在每次连锁开始时运行一次，目的是获取玩家副手物品的信息
# 目前使用副手信息的只有菌柄
# 1. 获取副手工具的最大耐久度，存入变量max_damage_offhand(如果手持不是挖掘工具，则视为0)
execute store result score max_damage_offhand mine_variables run function mine:generic/offhand/get_max_damage

# 2. 获取副手物品当前损坏值和是否无法破坏（若无法破坏，则损坏值视为0）
execute store result score damage_offhand mine_variables run data get storage mine:data items.offhand.components."minecraft:damage"
execute store result score unbreakable_offhand mine_variables if data storage mine:data items.offhand.components."minecraft:unbreakable"
execute if score unbreakable_offhand mine_variables matches 1 run scoreboard players set damage_offhand mine_variables 0

# 3. 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_offhand mine_variables run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_offhand mine_variables run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_offhand mine_variables run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:fortune"
