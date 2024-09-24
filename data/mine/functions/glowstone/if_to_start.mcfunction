tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
#无精准采集
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] unless data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest] run function mine:glowstone/main
#有精准采集
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest] run function mine:glowstone/main

scoreboard players reset @s mine_glowstone
tag @s remove mine_player