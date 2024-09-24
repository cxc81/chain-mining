loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:diamond_ore run particle minecraft:block minecraft:diamond_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run particle minecraft:block minecraft:deepslate_diamond_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:diamond_ore run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run playsound minecraft:block.deepslate.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

execute as @e[type=minecraft:item,tag=!detected,limit=1,sort=nearest] at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] unless data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:5s,Count:1}

scoreboard players add count mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items_with_orbs
function mine:ores/diamond_ore/find