tag @s add mine_player
execute store result score drop_count mine if entity @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:wheat"}}]
execute if score drop_count mine matches 1.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:wheat"}},limit=1,sort=nearest] run function mine:crops_1/wheat/main
scoreboard players reset @s mine_wheat
tag @s remove mine_player