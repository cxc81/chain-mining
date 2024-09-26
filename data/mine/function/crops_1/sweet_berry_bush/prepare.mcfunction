function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:sweet_berries"}},limit=1,sort=nearest] run function mine:crops_1/sweet_berry_bush/main
scoreboard players reset @s mine_sweet_berry_bush
function mine:generic/end_chain_mining
