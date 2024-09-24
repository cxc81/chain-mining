tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:crops_2/match_tool

scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}}] run function mine:crops_2/cocoa/drop_count

#只有挖掘成熟的可可果，并且使用斧，才能连锁
execute if score drop_count mine matches 2.. if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/main
scoreboard players reset @s mine_cocoa
tag @s remove mine_player