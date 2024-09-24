function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:calcite"}},limit=1,sort=nearest] run function mine:stones/calcite/main
scoreboard players reset @s mine_calcite
function mine:generic/end_chain_mining