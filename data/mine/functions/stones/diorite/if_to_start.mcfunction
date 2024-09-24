function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:diorite"}},limit=1,sort=nearest] run function mine:stones/diorite/main
scoreboard players reset @s mine_diorite
function mine:generic/end_chain_mining