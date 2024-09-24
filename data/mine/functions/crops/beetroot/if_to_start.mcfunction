execute store result score drop_count mine if entity @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:beetroot"}}]
execute if score drop_count mine matches 1.. run function mine:crops/beetroot/main
scoreboard players reset @s mine_beetroot