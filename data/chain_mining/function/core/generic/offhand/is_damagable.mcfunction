# @returns
#   1 if the item can be considered damagable, or 0 otherwise
# 要使工具可损伤，需同时满足这些条件：
#   1. 物品不具有unbreakable组件、并具有damage和max_damage组件
#   2. 一般情况下，物品要具有tool组件；但如果是carve_pumpkin模式，则不要求此条件
execute if score unbreakable_offhand chain_mining_variables matches 1 run return 0
execute if score max_damage_offhand chain_mining_variables matches 0 run return 0
execute if score damage_offhand chain_mining_variables matches -1 run return 0

execute if entity @s[tag=chain_mining_current_player_carve_pumpkin] run return 1
execute if score tool_offhand chain_mining_variables matches 0 run return 0
return 1
