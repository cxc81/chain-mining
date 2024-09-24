execute if block ~ ~ ~ minecraft:nether_wart_block run scoreboard players add count2 mine 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add count3 mine 1
setblock ~ ~ ~ minecraft:air destroy
function mine:generic/damage_off
function mine:generic/if_to_break_off
function mine:logs/crimson_stem/find_wart