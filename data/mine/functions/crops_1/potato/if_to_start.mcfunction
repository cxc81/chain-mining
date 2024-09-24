tag @s add mine_player
scoreboard players set total_drop_count mine 0
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops_1/potato/total_drop_count
execute if score total_drop_count mine matches 2.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops_1/potato/main
scoreboard players reset @s mine_potato
tag @s remove mine_player