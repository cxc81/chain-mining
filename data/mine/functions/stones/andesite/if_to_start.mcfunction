item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:andesite"}},limit=1,sort=nearest] run function mine:stones/andesite/main
scoreboard players reset @s mine_andesite