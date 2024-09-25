function mine:generic/begin_chain_mining
execute if predicate mine:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:spruce_log"}},limit=1,sort=nearest] run function mine:logs/spruce_log/main
scoreboard players reset @s mine_spruce_log
function mine:generic/end_chain_mining
