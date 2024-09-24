execute if block ~ ~ ~ minecraft:nether_wart_block run scoreboard players add count2 mine 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add count3 mine 1
setblock ~ ~ ~ minecraft:air destroy

execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage_off
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break_off

function mine:generic/tp_items
function mine:logs/crimson_stem/find_wart