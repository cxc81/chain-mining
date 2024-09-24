#先获取玩家所在的维度，0=主世界，-1=其他
#然而，只有主世界和下界才能运作连锁采集
scoreboard players set dimension mine -1
execute if block 0 -64 0 minecraft:chest run scoreboard players set dimension mine 0

execute if score dimension mine matches 0 run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute if score dimension mine matches -1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function mine:crops_2/match_tool

scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}}] run function mine:crops_2/cocoa/drop_count

#只有挖掘成熟的可可果，并且使用斧，才能连锁
execute if score drop_count mine matches 2.. if score match_tool mine matches 1 at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/main
scoreboard players reset @s mine_cocoa