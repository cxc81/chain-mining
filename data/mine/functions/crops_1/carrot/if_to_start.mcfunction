tag @s add mine_player
scoreboard players set total_drop_count mine 0
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] run function mine:crops_1/carrot/total_drop_count
execute if score total_drop_count mine matches 2.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] run function mine:crops_1/carrot/main
scoreboard players reset @s mine_carrot
tag @s remove mine_player