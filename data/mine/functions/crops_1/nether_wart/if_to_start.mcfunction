tag @s add mine_player
scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_wart"}}] run function mine:crops_1/nether_wart/drop_count
execute if score drop_count mine matches 2.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function mine:crops_1/nether_wart/main
scoreboard players reset @s mine_nether_wart
tag @s remove mine_player