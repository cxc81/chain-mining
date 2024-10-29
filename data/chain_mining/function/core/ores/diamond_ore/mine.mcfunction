execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

# xp: 3-7
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. summon minecraft:experience_orb run function chain_mining:core/ores/diamond_ore/exp_orb

scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items_with_orbs
function chain_mining:core/generic/find/normal {blocks: "#minecraft:diamond_ores", mine_function: "ores/diamond_ore/mine"}
