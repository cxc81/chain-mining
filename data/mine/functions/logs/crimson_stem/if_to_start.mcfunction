function mine:generic/begin_chain_mining
execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:crimson_stem"}},limit=1,sort=nearest] run function mine:logs/crimson_stem/main
scoreboard players reset @s mine_crimson
function mine:generic/end_chain_mining