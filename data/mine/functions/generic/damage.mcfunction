execute store result score damage mine run data get block ~ ~ ~ Items[{Slot:0b}].tag.Damage
summon minecraft:marker ~ ~ ~ {Tags:["mine_rnd"]}
execute store result score rnd_num mine run data get entity @e[type=minecraft:marker,tag=mine_rnd,limit=1,distance=0..] UUID[0]
execute store result score unbreaking_level mine run data get block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add unbreaking_level mine 1
scoreboard players operation rnd_num mine %= unbreaking_level mine 
execute if score rnd_num mine matches 0 run scoreboard players add damage mine 1
execute store result block ~ ~ ~ Items[{Slot:0b}].tag.Damage short 1 run scoreboard players get damage mine
kill @e[type=minecraft:marker,tag=mine_rnd]