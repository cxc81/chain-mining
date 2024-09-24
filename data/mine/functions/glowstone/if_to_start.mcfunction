item replace block 0 0 0 container.0 from entity @s weapon.mainhand
#无精准采集
execute unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest] run function mine:glowstone/main
#有精准采集
execute if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest] run function mine:glowstone/main
scoreboard players reset @s mine_glowstone