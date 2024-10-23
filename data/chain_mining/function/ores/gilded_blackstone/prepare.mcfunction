function chain_mining:generic/begin_chain_mining

# 根据silk_touch_level_mainhand和fortune_level_mainhand，为可能出现的掉落物添加标签
# 镶金黑石：有精准采集，或时运等级小于等于2
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. run tag @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add chain_mining_gilded_blackstone_drop
execute if score fortune_level_mainhand chain_mining_variables matches ..2 run tag @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add chain_mining_gilded_blackstone_drop
# 金粒：无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. run tag @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] add chain_mining_gilded_blackstone_drop

execute at @e[type=minecraft:item,tag=!chain_mining_detected,tag=chain_mining_gilded_blackstone_drop,limit=1,sort=nearest] run function chain_mining:ores/gilded_blackstone/main
scoreboard players reset @s chain_mining_gilded_blackstone
function chain_mining:generic/end_chain_mining
