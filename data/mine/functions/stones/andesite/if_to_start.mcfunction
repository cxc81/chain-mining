function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:andesite"}},limit=1,sort=nearest] run function mine:stones/andesite/main
scoreboard players reset @s mine_andesite
function mine:generic/end_chain_mining