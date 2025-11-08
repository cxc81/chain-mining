execute store result score damage_per_block_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/get_damage_per_block
execute store result score max_damage_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/get_max_damage
execute store result score unbreakable_mainhand chain_mining_variables if data storage chain_mining:data items.mainhand.components."minecraft:unbreakable"
execute store result score damage_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/get_damage
# 根据以上信息，判断物品是否能够在连锁采集中消耗耐久
execute store result score damagable_mainhand chain_mining_variables run function chain_mining:core/generic/mainhand/is_damagable
