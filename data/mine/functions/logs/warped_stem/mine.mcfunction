loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:warped_stem ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.stem.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
execute if score match_tool_off mine matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find