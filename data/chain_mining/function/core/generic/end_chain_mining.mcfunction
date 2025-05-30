# 所有连锁采集公共的结尾
tag @s remove chain_mining_current_player
execute if data storage chain_mining:data function_call.actionbar[0] run function chain_mining:core/generic/actionbar_feedback

# 注意：仅当物品可损伤(damagable)时才更新玩家主副手物品
execute if score damagable_mainhand chain_mining_variables matches 1 store result storage chain_mining:data items.mainhand.components."minecraft:damage" int 1 run scoreboard players get damage_mainhand chain_mining_variables
execute if score damagable_mainhand chain_mining_variables matches 1 run function chain_mining:core/generic/mainhand/set_damage
execute if score damagable_mainhand chain_mining_variables matches 1 if score damage_mainhand chain_mining_variables >= max_damage_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/break

execute if score damagable_offhand chain_mining_variables matches 1 store result storage chain_mining:data items.offhand.components."minecraft:damage" int 1 run scoreboard players get damage_offhand chain_mining_variables
execute if score damagable_offhand chain_mining_variables matches 1 run function chain_mining:core/generic/offhand/set_damage
execute if score damagable_offhand chain_mining_variables matches 1 if score damage_offhand chain_mining_variables >= max_damage_offhand chain_mining_variables run function chain_mining:core/generic/offhand/break
