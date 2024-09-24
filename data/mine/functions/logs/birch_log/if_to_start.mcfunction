item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function mine:logs/match_tool
execute if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest] run function mine:logs/birch_log/main
scoreboard players reset @s mine_birch