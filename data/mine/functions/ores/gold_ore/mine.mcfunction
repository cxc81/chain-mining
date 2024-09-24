loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:gold_ore run particle minecraft:block minecraft:gold_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run particle minecraft:block minecraft:deepslate_gold_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:gold_ore run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run playsound minecraft:block.deepslate.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
function mine:ores/gold_ore/find