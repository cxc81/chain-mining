execute store result score damage_per_block_offhand chain_mining_variables run function chain_mining:core/generic/offhand/get_damage_per_block
execute store result score max_damage_offhand chain_mining_variables run function chain_mining:core/generic/offhand/get_max_damage
execute store result score unbreakable_offhand chain_mining_variables if data storage chain_mining:data items.offhand.components."minecraft:unbreakable"
execute store result score damage_offhand chain_mining_variables run function chain_mining:core/generic/offhand/get_damage
# 根据以上信息，判断物品是否能够在连锁采集中消耗耐久
execute store result score damagable_offhand chain_mining_variables run function chain_mining:core/generic/offhand/is_damagable
