tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:crops_2/match_tool
execute if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:pumpkin"}},limit=1,sort=nearest] run function mine:crops_2/pumpkin/main
scoreboard players reset @s mine_pumpkin
tag @s remove mine_player