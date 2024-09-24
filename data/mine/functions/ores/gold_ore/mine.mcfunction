loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:gold_ore run particle minecraft:block minecraft:gold_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run particle minecraft:block minecraft:deepslate_gold_ore ~ ~ ~ 0.5 0.5 0.5 0 40
execute if block ~ ~ ~ minecraft:gold_ore run playsound minecraft:block.stone.break block @a
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run playsound minecraft:block.deepslate.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:ores/gold_ore/find