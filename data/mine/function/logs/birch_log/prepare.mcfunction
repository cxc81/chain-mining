function mine:generic/begin_chain_mining
execute if predicate mine:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest] run function mine:logs/birch_log/main
scoreboard players reset @s mine_birch_log
function mine:generic/end_chain_mining
