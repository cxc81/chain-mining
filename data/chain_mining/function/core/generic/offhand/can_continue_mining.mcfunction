# @returns
#   1 if the item can be continued chain-mining, 0 otherwise
# 如果物品可损伤，则需要耐久度大于0，即损伤值小于最大耐久度
# 如果物品不可损伤，则认为能够继续连锁（通常出现于由命令自定义的物品）
execute if score damagable_offhand chain_mining_variables matches 0 run return 1
execute if score damage_offhand chain_mining_variables < max_damage_offhand chain_mining_variables run return 1
return 0
