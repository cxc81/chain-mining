# 所有连锁采集公共的结尾
tag @s remove chain_mining_current_player
gamerule doTileDrops true

# 注意：仅当物品可损伤(damagable)时才更新玩家主副手物品
execute if score damagable_mainhand chain_mining_variables matches 1 store result storage chain_mining:data items.mainhand.components."minecraft:damage" int 1 run scoreboard players get damage_mainhand chain_mining_variables
execute if score damagable_mainhand chain_mining_variables matches 1 run function chain_mining:generic/mainhand/set_damage
execute if score damagable_mainhand chain_mining_variables matches 1 if score damage_mainhand chain_mining_variables >= max_damage_mainhand chain_mining_variables run function chain_mining:generic/mainhand/break

execute if score damagable_offhand chain_mining_variables matches 1 store result storage chain_mining:data items.offhand.components."minecraft:damage" int 1 run scoreboard players get damage_offhand chain_mining_variables
execute if score damagable_offhand chain_mining_variables matches 1 run function chain_mining:generic/offhand/set_damage
execute if score damagable_offhand chain_mining_variables matches 1 if score damage_offhand chain_mining_variables >= max_damage_offhand chain_mining_variables run function chain_mining:generic/offhand/break
