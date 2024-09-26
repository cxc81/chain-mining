function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:wheat"}},limit=1,sort=nearest] run function mine:crops_1/wheat/main
scoreboard players reset @s mine_wheat
function mine:generic/end_chain_mining
