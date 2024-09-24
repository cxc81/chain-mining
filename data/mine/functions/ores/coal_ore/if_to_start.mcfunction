tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
#无精准采集
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] unless data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:coal"}},limit=1,sort=nearest] run function mine:ores/coal_ore/main
#有精准采集——浅层
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if score @s mine_coal_ore matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:coal_ore"}},limit=1,sort=nearest] run function mine:ores/coal_ore/main
#有精准采集——深层
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if score @s mine_deepslate_coal_ore matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:deepslate_coal_ore"}},limit=1,sort=nearest] run function mine:ores/coal_ore/main

scoreboard players reset @s mine_coal_ore
scoreboard players reset @s mine_deepslate_coal_ore
tag @s remove mine_player