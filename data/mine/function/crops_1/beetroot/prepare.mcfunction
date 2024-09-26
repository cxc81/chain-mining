function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:beetroot"}},limit=1,sort=nearest] run function mine:crops_1/beetroot/main
scoreboard players reset @s mine_beetroot
function mine:generic/end_chain_mining
