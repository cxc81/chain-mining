function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:tuff"}},limit=1,sort=nearest] run function mine:stones/tuff/main
scoreboard players reset @s mine_tuff
function mine:generic/end_chain_mining
