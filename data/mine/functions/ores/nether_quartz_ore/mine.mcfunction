loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:nether_quartz_ore ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.nether_ore.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

execute as @e[type=minecraft:item,tag=!detected,limit=1,sort=nearest] at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] unless data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Count:1}

scoreboard players add count mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items_with_orbs
function mine:ores/nether_quartz_ore/find