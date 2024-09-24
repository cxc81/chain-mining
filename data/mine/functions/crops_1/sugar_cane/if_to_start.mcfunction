#如果玩家挖掘的甘蔗下方还有甘蔗，则触发连锁
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:sugar_cane"}},limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:sugar_cane run function mine:crops_1/sugar_cane/main
scoreboard players reset @s mine_sugar_cane