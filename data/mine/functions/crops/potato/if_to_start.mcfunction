scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:potato"}}] run function mine:crops/potato/drop_count
execute if score drop_count mine matches 2.. run function mine:crops/potato/main
scoreboard players reset @s mine_potato