tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:magma_block"}},limit=1,sort=nearest] run function mine:stones/magma_block/main
scoreboard players reset @s mine_magma_block
tag @s remove mine_player