tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:crops_2/match_tool
#无精准采集
execute if score match_tool mine matches 1 at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] unless data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
#有精准采集
execute if score match_tool mine matches 1 at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function mine:crops_2/melon/main

scoreboard players reset @s mine_melon
tag @s remove mine_player