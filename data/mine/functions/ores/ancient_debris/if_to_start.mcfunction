item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:ancient_debris"}},limit=1,sort=nearest] run function mine:ores/ancient_debris/main
scoreboard players reset @s mine_ancient