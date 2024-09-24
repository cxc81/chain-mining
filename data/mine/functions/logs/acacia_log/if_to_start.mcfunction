function mine:generic/begin_chain_mining
execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:acacia_log"}},limit=1,sort=nearest] run function mine:logs/acacia_log/main
scoreboard players reset @s mine_acacia
function mine:generic/end_chain_mining