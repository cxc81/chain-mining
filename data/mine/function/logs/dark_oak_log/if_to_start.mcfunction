function mine:generic/begin_chain_mining
execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:dark_oak_log"}},limit=1,sort=nearest] run function mine:logs/dark_oak_log/main
scoreboard players reset @s mine_dark_oak_log
function mine:generic/end_chain_mining
