function mine:generic/begin_chain_mining
execute store result score drop_count mine if entity @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:beetroot"}}]
execute if score drop_count mine matches 1.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:beetroot"}},limit=1,sort=nearest] run function mine:crops_1/beetroot/main
scoreboard players reset @s mine_beetroot
function mine:generic/end_chain_mining