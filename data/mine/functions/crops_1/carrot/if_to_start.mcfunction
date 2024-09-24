scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:carrot"}}] run function mine:crops_1/carrot/drop_count
execute if score drop_count mine matches 2.. run function mine:crops_1/carrot/main
scoreboard players reset @s mine_carrot