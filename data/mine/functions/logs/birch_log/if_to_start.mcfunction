#先获取玩家所在的维度，0=主世界，-1=其他
#然而，只有主世界和下界才能运作连锁采集
scoreboard players set dimension mine -1
execute if block 0 -64 0 minecraft:chest run scoreboard players set dimension mine 0

execute if score dimension mine matches 0 run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute if score dimension mine matches -1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function mine:logs/match_tool
execute if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest] run function mine:logs/birch_log/main
scoreboard players reset @s mine_birch