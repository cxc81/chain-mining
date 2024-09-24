function mine:generic/begin_chain_mining
execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:spruce_log"}},limit=1,sort=nearest] run function mine:logs/spruce_log/main
scoreboard players reset @s mine_spruce
function mine:generic/end_chain_mining