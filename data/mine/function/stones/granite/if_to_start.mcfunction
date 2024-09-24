function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:granite"}},limit=1,sort=nearest] run function mine:stones/granite/main
scoreboard players reset @s mine_granite
function mine:generic/end_chain_mining
