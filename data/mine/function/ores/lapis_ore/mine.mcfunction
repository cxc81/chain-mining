execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

# xp: 2-5
execute unless score silk_touch_level_mainhand mine_variables matches 1.. summon minecraft:experience_orb run function mine:ores/lapis_ore/exp_orb

scoreboard players add num_blocks_mined mine_variables 1
function mine:generic/mainhand/apply_damage

function mine:generic/tp_items_with_orbs
function mine:ores/lapis_ore/find
