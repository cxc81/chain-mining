tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.1 from entity @s weapon.offhand
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:logs/match_tool
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:logs/match_tool_off
execute if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:crimson_stem"}},limit=1,sort=nearest] run function mine:logs/crimson_stem/main
scoreboard players reset @s mine_crimson
tag @s remove mine_player