loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

# exp: 2-5
execute unless score silk_touch_level_mainhand mine matches 1.. run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Count:1,Tags:["mine_experience_orb"]}

scoreboard players add count mine 1
function mine:generic/mainhand/damage

function mine:generic/tp_items_with_orbs
function mine:ores/lapis_ore/find
