function mine:generic/begin_chain_mining

# 根据silk_touch_level_mainhand和fortune_level_mainhand，为可能出现的掉落物添加标签
# 镶金黑石：有精准采集，或时运等级小于等于2
execute if score silk_touch_level_mainhand mine_variables matches 1.. run tag @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
execute if score fortune_level_mainhand mine_variables matches ..2 run tag @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
# 金粒：无精准采集
execute unless score silk_touch_level_mainhand mine_variables matches 1.. run tag @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop

execute at @e[type=minecraft:item,tag=!mine_detected,tag=mine_gilded_blackstone_drop,limit=1,sort=nearest] run function mine:ores/gilded_blackstone/main
scoreboard players reset @s mine_gilded_blackstone
function mine:generic/end_chain_mining
