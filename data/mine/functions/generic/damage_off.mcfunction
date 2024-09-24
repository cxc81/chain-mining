execute if score dimension mine matches 0 store result score damage_off mine run data get block 0 -64 0 Items[{Slot:1b}].tag.Damage
execute if score dimension mine matches -1 store result score damage_off mine run data get block 0 0 0 Items[{Slot:1b}].tag.Damage
execute store result score rnd_num mine run data get entity @e[type=minecraft:item,tag=!detected,limit=1,sort=nearest] UUID[0]
execute if score dimension mine matches 0 store result score unbreaking_level mine run data get block 0 -64 0 Items[{Slot:1b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score dimension mine matches -1 store result score unbreaking_level mine run data get block 0 0 0 Items[{Slot:1b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add unbreaking_level mine 1
scoreboard players operation rnd_num mine %= unbreaking_level mine 
execute if score rnd_num mine matches 0 run scoreboard players add damage_off mine 1
execute if score dimension mine matches 0 store result block 0 -64 0 Items[{Slot:1b}].tag.Damage short 1 run scoreboard players get damage_off mine
execute if score dimension mine matches -1 store result block 0 0 0 Items[{Slot:1b}].tag.Damage short 1 run scoreboard players get damage_off mine