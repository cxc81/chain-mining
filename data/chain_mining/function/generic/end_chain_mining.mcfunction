# 所有连锁采集公共的结尾

tag @s remove chain_mining_current_player
gamerule doTileDrops true
# 注意：如果最大耐久为0，表明手持的不是工具
# 将记分板变量damage_mainhand和damage_offhand存回命令存储chain_mining:data
execute unless score max_damage_mainhand chain_mining_variables matches 0 store result storage chain_mining:data items.mainhand.components."minecraft:damage" int 1 run scoreboard players get damage_mainhand chain_mining_variables
execute unless score max_damage_offhand chain_mining_variables matches 0 store result storage chain_mining:data items.offhand.components."minecraft:damage" int 1 run scoreboard players get damage_offhand chain_mining_variables
# 将命令存储chain_mining:data的物品存入玩家主副手
# 需要分情形：
#   1. 损坏值未达到最大耐久，则只修改玩家主副手物品的损坏值(耐久度)，使用/item modify命令
#   2. 损坏值达到或超过最大耐久，直接替换为空气(即物品已损毁)
execute unless score max_damage_mainhand chain_mining_variables matches 0 run function chain_mining:generic/mainhand/set_damage
execute unless score max_damage_mainhand chain_mining_variables matches 0 if score damage_mainhand chain_mining_variables >= max_damage_mainhand chain_mining_variables run function chain_mining:generic/mainhand/break
execute unless score max_damage_offhand chain_mining_variables matches 0 run function chain_mining:generic/offhand/set_damage
execute unless score max_damage_offhand chain_mining_variables matches 0 if score damage_offhand chain_mining_variables >= max_damage_offhand chain_mining_variables run function chain_mining:generic/offhand/break
