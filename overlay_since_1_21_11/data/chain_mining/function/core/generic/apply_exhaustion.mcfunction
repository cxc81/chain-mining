# @since 1.21.11

execute unless score num_blocks_mined chain_mining_variables matches 2.. run return fail
execute if entity @s[tag=chain_mining_current_player_carve_pumpkin] run return fail
execute if entity @s[tag=chain_mining_current_player_harvest] run return fail

# 玩家通过连锁采集，额外挖掘了(num_blocks_mined - 1)个方块，记为extra_blocks_mined
# 通过chain_mining:exhaustion_applier和chain_mining:exhaustion_applier_plus两个魔咒控制饥饿消耗度的施加
# extra_blocks_mined的上限值是65535，这是受限于魔咒的范围，必须钳制
# 根据extra_blocks_mined计算两个魔咒的等级
#   extra_blocks_mined  exhaustion_applier_level  exhaustion_applier_plus_level
#                    1                         1                              0
#                  255                       255                              0
#                  256                         0                              1
#                65535                       255                            255
scoreboard players operation #extra_blocks_mined chain_mining_variables = num_blocks_mined chain_mining_variables
scoreboard players operation #extra_blocks_mined chain_mining_variables < 65536 chain_mining_constants
scoreboard players remove #extra_blocks_mined chain_mining_variables 1
scoreboard players operation #exhaustion_applier_level chain_mining_variables = #extra_blocks_mined chain_mining_variables
scoreboard players operation #exhaustion_applier_level chain_mining_variables %= 256 chain_mining_constants
scoreboard players operation #exhaustion_applier_plus_level chain_mining_variables = #extra_blocks_mined chain_mining_variables
scoreboard players operation #exhaustion_applier_plus_level chain_mining_variables /= 256 chain_mining_constants

# 生成辅助物品，并根据分数施加对应等级的魔咒
# 万一已经在armor.body槽位有物品了，则通过物品展示实体暂存
execute store result score #has_body_item chain_mining_variables if items entity @s armor.body *
execute if score #has_body_item chain_mining_variables matches 1.. run function chain_mining:core/generic/apply_exhaustion/store_body_item
item replace entity @s armor.body with minecraft:recovery_compass[minecraft:equippable={slot: "body", equip_sound: {sound_id: ""}}]
item modify entity @s armor.body {function: "minecraft:set_enchantments", enchantments: {"chain_mining:exhaustion_applier": {type: "minecraft:score", target: {type: "minecraft:fixed", name: "#exhaustion_applier_level"}, score: "chain_mining_variables"}, "chain_mining:exhaustion_applier_plus": {type: "minecraft:score", target: {type: "minecraft:fixed", name: "#exhaustion_applier_plus_level"}, score: "chain_mining_variables"}}}

# 记录玩家当前的游戏模式，并切换成旁观，最后切回来
scoreboard players set #game_mode chain_mining_variables 3
execute if entity @s[gamemode=survival] run scoreboard players set #game_mode chain_mining_variables 0
execute if entity @s[gamemode=creative] run scoreboard players set #game_mode chain_mining_variables 1
execute if entity @s[gamemode=adventure] run scoreboard players set #game_mode chain_mining_variables 2
gamemode spectator
execute if score #game_mode chain_mining_variables matches 0 run gamemode survival
execute if score #game_mode chain_mining_variables matches 1 run gamemode creative
execute if score #game_mode chain_mining_variables matches 2 run gamemode adventure

# 移除辅助物品（并取回之前可能存在的body槽位物品）
item replace entity @s armor.body with minecraft:air
execute if score #has_body_item chain_mining_variables matches 1.. run function chain_mining:core/generic/apply_exhaustion/retrieve_body_item
