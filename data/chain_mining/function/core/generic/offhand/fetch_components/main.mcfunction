# 这个函数只会在每次连锁开始时运行一次，目的是获取玩家副手物品的相关组件信息

# tool组件是否存在
execute store result score tool_offhand chain_mining_variables run function chain_mining:core/generic/offhand/fetch_components/tool
# tool组件的damage_per_block字段的值
execute store result score damage_per_block_offhand chain_mining_variables run function chain_mining:core/generic/offhand/fetch_components/tool_damage_per_block
# max_damage组件的值
execute store result score max_damage_offhand chain_mining_variables run function chain_mining:core/generic/offhand/fetch_components/max_damage
# unbreakable组件是否存在
execute store result score unbreakable_offhand chain_mining_variables if data storage chain_mining:data items.offhand.components."minecraft:unbreakable"
# damage组件的值
execute store result score damage_offhand chain_mining_variables run function chain_mining:core/generic/offhand/fetch_components/damage
# enchantments组件的部分魔咒的等级
function chain_mining:core/generic/offhand/fetch_components/enchantments
