function mine:generic/begin_chain_mining
execute if predicate mine:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:crimson_stem"}},limit=1,sort=nearest] run function mine:logs/crimson_stem/main
scoreboard players reset @s mine_crimson_stem
function mine:generic/end_chain_mining
