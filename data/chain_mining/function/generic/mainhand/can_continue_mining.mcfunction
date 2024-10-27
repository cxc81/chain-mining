# 如果物品可损伤，则需要耐久度大于0，即损伤值小于最大耐久度
# 如果物品不可损伤，则认为能够继续连锁（出现于不是工具，或由命令自定义的物品）
execute if score damagable_mainhand chain_mining_variables matches 0 run return 1
execute if score damage_mainhand chain_mining_variables < max_damage_mainhand chain_mining_variables run return 1
return 0
